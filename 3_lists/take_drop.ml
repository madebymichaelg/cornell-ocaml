let rec take x lst = match lst with
	| [] -> []
	| h::t -> if x > 0 then h::(take (x-1) t) else []
	
let rec drop x lst = match lst with
	| [] -> []
	| h::t -> if x = 0 then h::t else drop (x-1) t
