let sum_cube_odd n = List.fold_left (fun a x -> a + x) 0 (List.map (fun x -> x*x) (List.filter (fun x -> (x mod 2) != 0) (0--n))) (* yuck! *)

let sum_cube_odd_p n = (0--n)
	|> List.filter (fun x -> (x mod 2) != 0)
	|> List.map (fun x -> x*x)
	|> List.fold_left (fun a b -> a+b) 0