let rec is_valid_matrix = function
	| [] -> false
	| a::b::t -> (List.compare_lengths a b)=0 && all (b::t)
	| h::t -> true

let combine a b = List.map2 (fun a b -> a+b) a b

let matrix_add a b = List.map2 combine a b

let matrix_mult a b = List.map2 mult_vectors a b