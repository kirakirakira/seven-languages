#!/usr/bin/ruby

module ActsAsCsv
    # A CsvRow is basically a Hash keyed on the column name innit?
    class CsvRow < Hash
        def method_missing(name)
            return self[name.to_s]
        end
    end

    def self.included base
        base.extend ClassMethods
    end

    module ClassMethods
        def acts_as_csv
            include InstanceMethods
        end
    end

    module InstanceMethods
        def read
            @csv_contents = []
            filename = self.class.to_s.downcase + '.csv'
            f = File.new(filename)
            @headers = f.gets.chomp.split(', ')

            rowcount = 0
            f.each do |row|
                cellcount = 0
                row.chomp.split(', ').each do |cell|
                    if @csv_contents[rowcount] == nil
                        @csv_contents[rowcount] = CsvRow.new
                    end
                    @csv_contents[rowcount][@headers[cellcount]] = cell.chomp
                    cellcount = cellcount + 1    
                end
                rowcount = rowcount + 1
            end
        end

        attr_accessor :headers, :csv_contents, :csv_rows

        def initialize
            read
        end

        def each
            @csv_contents.each do |row|
                yield row
            end
        end

    end

end


class RubyCsv
    include ActsAsCsv
    acts_as_csv
end

r = RubyCsv.new
r.each {|row| puts row.one}