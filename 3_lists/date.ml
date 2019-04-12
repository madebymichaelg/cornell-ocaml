type date = (int*int*int)

let is_before (ayear,amonth,aday) (byear,bmonth,bday) =
	if ayear!=byear then ayear<byear
	else if amonth!=bmonth then amonth<bmonth
	else if aday!=bday then aday<bday
	else false

let rec earliest lst = match lst with
	| [] -> None
	| h::t -> Some h
	| a::b::t -> if is_before a b then earliest (a::t) else earliest (b::t)

	