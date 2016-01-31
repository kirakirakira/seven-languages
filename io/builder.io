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
#test keys println
#test values println
#test foreach(k, v, k println v println)

Builder := Object clone

Builder indent := 0

Builder indentation := method(indent,
	to_add := ""
	if(indent > 0) then(
		for(a, 1, indent,
			to_add = to_add .. "  "
		)
	)
	return to_add
)

Builder forward := method(

	attrname := "hi"
	attrvalue := "hi"

	call message arguments foreach(
		arg,
		content := self doMessage(arg)
		content type println
		content println
		
		if(content type = "Map") then(
			content foreach(k, v,
			attrname = k
			attrvalue = v
			)
		)
		
		writeln(indentation(indent), "<", call message name, " ", attrname, "=\"", attrvalue, "\">")
		indent = indent + 1
		call message arguments foreach(
			arg,
			content := self doMessage(arg);
			if(content type == "Sequence",
				writeln(indentation(indent), content)
			)
		)
		indent = indent - 1
		writeln(indentation(indent), "</", call message name, ">")
	)
)

Builder ul(
	li("Io"),
	li("Lua"),
	li("Javascript")
)

s := File with("example.txt") openForReading contents
test := doString(s)
Builder book(test)



