// Write a Censor trait with a method that will replace the curse words
// Shoot and Darn with Pucky and Beans alternatives. Use a map to
// store the curse words and their alternatives.


trait Censor {
	// protected val content
	def censor = {
		val substitutions = Map("Shoot" -> "Pucky", "Darn" -> "Beans")
		val string = toString

		string.split(" ").map({ word => 
			if(substitutions.contains(word)) {
				substitutions(word)
			} else {
				word
			}
		}).mkString(" ")

		// substitutions.foldLeft(toString) {
		//   case(s, (k, v)) => s.replaceAll(k, v)
		// }
	}
}

class Censorer extends Censor {
	override def toString(): String = {
		"Shoot bookie what up"
	}
}

val censorer = new Censorer

println(censorer.censor)
println(censorer.toString)