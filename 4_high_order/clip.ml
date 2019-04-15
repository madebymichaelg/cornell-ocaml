let rec clip_list_rec = function
	| [] -> []
	| h::t -> (clip h)::clip_list_rec(t)

let clip_list_map lst = List.map clip lst