// Use foldLeft to compute the total size of a list of strings

val list = List("peg", "al", "bud", "kelly")

val sum = (0 /: list) {(sum, i) => sum + i.size}

println(list)
println(sum)