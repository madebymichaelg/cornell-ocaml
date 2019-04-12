let safe_hd = function
	| [] -> None
	| h::t -> Some h

let safe_tl = function
	| [] -> None
	| _::t -> Some t