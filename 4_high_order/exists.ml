let neg x = x<0

let rec exists_rec f = function
	| [] -> false
	| h::t -> (f h) || exists_rec f t

let pos x y = if x>0 then x+y else 0+y

let exists_fold lst = 0<(List.fold_left pos 0 lst)

let exists_lib lst = List.fold_left (||) false (List.map (fun x -> x<0) lst)

let exists_lib lst = List.map (fun x -> x<0) lst |> List.fold_left (||) false
