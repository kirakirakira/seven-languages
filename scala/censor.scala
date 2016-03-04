// Write a Censor trait with a method that will replace the curse words Shoot and Darn with Pucky and Beans alternatives. Use a map to store the curse words and their alternatives.

val niceWords = Map("Shoot" -> "Pucky", "Darn" -> "Beans")

class Text(val words:String) 

trait Censor {
	def censorText(words:String): String = {
		val wordArray:Array[String] = words.split(" ")
		var censoredArray = Array[String]()

		for (word <- wordArray) {
			if (niceWords.contains(word)) {
				censoredArray = censoredArray :+ niceWords(word);
			}
			else {
				censoredArray = censoredArray :+ word;
			}
		}
		censoredArray.mkString(" ")
	}
}

class NiceText(override val words:String) extends Text(words) with Censor {
	def censored = censorText(this.words)
}

val text1 = new NiceText("Oh Shoot I hurt my Darn foot") 

println(text1.censored)