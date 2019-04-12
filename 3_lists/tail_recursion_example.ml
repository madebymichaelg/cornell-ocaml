let rec sum (l :int list) : int = match l with
	| [] -> 0
	| h::t -> h + (sum t);;

let rec sum_tail (acc : int) (lst : int list) : int =
	match lst with
		| [] -> acc
		| h::t -> sum_tail ( acc + h) t;;

let sum_tr : int list -> int = sum_tail 0;;