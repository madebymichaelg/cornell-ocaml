let fifth lst = if List.length lst < 5
	then 0
	else List.nth lst 5

let any_zeros lst = List.exists (fun x -> x=0) lst