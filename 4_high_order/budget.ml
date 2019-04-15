let budget_left total lst = total-(List.fold_left (fun a b -> a+b) 0 lst)

let budget_right total lst = total-(List.fold_right (fun a b -> a+b) lst 0)

let rec budget_rec total lst =
let rec sum = function
	| [] -> 0
	| h::t -> h+sum(t) 
in total-sum(lst)