
import scala.collection.mutable.ArrayBuffer

class Board(var board: ArrayBuffer[String]){
	
	val winningBoards = List((0,1,2), (3,4,5), (6,7,8), (0,3,6), (1,4,7), (2,5,8), (0,4,8), (2,4,6))

	def printBoard() {
		println(board)
	}

	def checkWinning() {
		var ifwin = 0
		var numSpotsFull = 0

		for (i <- 0 until board.length) {
			if (board(i) != " ") {
				numSpotsFull += 1
			}
		}

		for (i <- 0 until winningBoards.length) {
			val tupBoards = winningBoards(i)
			if (board(tupBoards._1) == board(tupBoards._2) && board(tupBoards._1) == board(tupBoards._3) && board(tupBoards._1) != " ") {
				ifwin += 1
			}
			else {
				ifwin += 0
			}
		}
		if (ifwin > 0) {
			println("Winning board!")
		}
		else if (ifwin == 0 && numSpotsFull == 9) {
			println("Tie!") 
		}
		else {
			println("Not a complete game")
		}
	}
}

var board = ArrayBuffer[String]("X", "O", "X", "O", "O", "X", " ", "X", "O")
var myBoard = new Board(board)
myBoard.printBoard
myBoard.checkWinning