OperatorTable addAssignOperator(":", "atPutString")
curlyBrackets := method(
	r := Map clone
	call message arguments foreach(arg,
		r doMessage(arg)
	)
	r
)

Map atPutString := method(
	self atPut(
		call evalArgAt(0) asMutable removePrefix("\"") removeSuffix("\""),
		call evalArgAt(1) asMutable removePrefix("\"") removeSuffix("\"")
	)
)

s := File with("example.txt") openForReading contents
test := doString(s)
test keys println
test values println
test foreach(attrname, attrvalue,
			attrname := attrname
			attrvalue := attrvalue
		)
attrname size println
attrvalue println