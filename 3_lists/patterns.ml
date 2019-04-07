let lst = ["thank you cornell";"open source classes are great";"another string"];;

let thank_you_first lst = match lst with
	| h::t -> "thank you cornell"=h
	| _ -> false;;