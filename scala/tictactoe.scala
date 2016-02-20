// val numbers = Array(1,2,3,4)
// println(numbers)
// println(numbers(0))
// numbers(0) = 8
// println(numbers.deep.mkString("\n"))

// val array = Array.fill(3,3)(0)
// println(array.deep.mkString("\n"))
// println(array(0)(0))
// array(0)(0) = 'X'
// println(array.deep.mkString("\n"))

// val board = new Array[String](3)

// board(0) = "X"

// println(board.deep.mkString("\n"))

import scala.collection.mutable.ArrayBuffer
// var fruits = ArrayBuffer[String]()
// fruits += "Apple"
// fruits += "Banana"
// fruits += "Orange"
// println(fruits)
// println(fruits.length)

class Board {
	var board = ArrayBuffer[String]("X", "X", "X", "O", " ", " ", " ", " ", "X")
	val winningBoards = List((0,1,2), (3,4,5), (6,7,8), (0,3,6), (1,4,7), (2,5,8), (0,4,8), (2,4,6))

	def printBoard() {
		println(board)
	}

	def checkWinning() {
		var ifwin = 0
		for (i <- 0 until winningBoards.length) {
		// println(winningBoards(i))
			val tupBoards = winningBoards(i)
			if (board(tupBoards._1) == board(tupBoards._2) && board(tupBoards._1) == board(tupBoards._3)) {
				ifwin += 1
			}
			else {
				ifwin += 0
			}
		}
		if (ifwin > 0) {
			println("Winning board!")
		}
		else {
			println("Loser board!") 
		}
	}
}

var myBoard = new Board
myBoard.printBoard
myBoard.checkWinning

// println(board)

// board(0) = "O"

// println(board(0))

// for (i <- 0 until board.length) {
// 	println(board(i))
// }

// var winning = ((0,1,2), (3,4,5), (6,7,8), (0,3,6), (1,4,7), (2,5,8), (0,4,8), (2,4,6))

// for (i <- 0 until winning.productArity) {
// 	println(winning.productElement(i))
// }

// winning.productIterator.foreach(println)

// println(board(winning._1))
// println(winning._2)
// println(winning._3)

// if (board(winning._1) == board(winning._2) && board(winning._1) == board(winning._3)) {
// 	println("true")
// }
// else {
// 	println("false")
// }

// val winningBoards = List((0,1,2), (3,4,5), (6,7,8), (0,3,6), (1,4,7), (2,5,8), (0,4,8), (2,4,6))

// for (i <- 0 until winningBoards.length) {
// 	// println(winningBoards(i))
// 	val tupBoards = winningBoards(i)
// 	println(tupBoards)
// 	if (board(tupBoards._1) == board(tupBoards._2) && board(tupBoards._1) == board(tupBoards._3)) {
// 		println("true")
// 	}
// 	else {
// 		println("false")
// 	}
// }

// for (i <- 0 until winning.productArity) {
// 	for (j <- 0 until board.length) {
// 		if (board(j) == winning.productElement(i))

// 	}
// }


