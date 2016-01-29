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
	writeln(indentation(indent), "<", call message name, ">")
	indent = indent + 1
	call message arguments foreach(
		arg,
		content := self doMessage(arg);
		if(content type == "Sequence", writeln(indentation(indent), content)))
	indent = indent - 1
	writeln(indentation(indent), "</", call message name, ">")
)

Builder ul(
	li("Io"),
	li("Lua"),
	li("Javascript")
)

#Builder book({"author": "Tate"})
