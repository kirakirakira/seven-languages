import scala.io.Source

val filename = "fileopen.scala"
for (line <- Source.fromFile(filename).getLines) {
    println(line)
}

val lines = Source.fromFile(filename).getLines.toArray