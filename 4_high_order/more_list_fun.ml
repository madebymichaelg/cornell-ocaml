let filter_gt_three lst = List.filter (fun x -> x>3) lst

let map_add_one lst = List.map (fun x -> x+.1.0) lst

let arr_to_str strs sep = match strs with
| [] -> ""
| h::t -> h^ (List.fold_left (fun x y -> x^sep^y) "" t)