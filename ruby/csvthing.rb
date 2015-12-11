#---
# Excerpted from "Seven Languages in Seven Weeks",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/btlang for more book information.
#---
module ActsAsCsv
  def initialize
    @csv_contents = []
    filename = self.class.to_s.downcase + '.txt'
    file = File.new(filename)
    @headers = file.gets.chomp.split(', ')

    file.each do |row|
      @csv_contents << CsvRow.new(@headers, row.chomp.split(', '))
    end
  end
  
  attr_accessor :headers, :csv_contents
  
  def each
    @csv_contents.each {|row| yield row}
  end
    
  class CsvRow
    def initialize(headers, contents)
      @headers = headers
      @csv_contents = contents
    end
    
    def method_missing name, *args
      index = @headers.index(name.to_s)
      @csv_contents[index] unless index.nil?
    end
  end
end

class RubyCsv  # no inheritance! You can mix it in
  include ActsAsCsv
end

m = RubyCsv.new
puts m.headers.inspect
puts m.csv_contents.inspect
m.each {|row| puts row.one}