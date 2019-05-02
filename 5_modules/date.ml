module Date = struct
	type date = { month:int; day:int }
	
	type t = date

	let compare a b = 
		if a.month>b.month then 1
		else if a.month<b.month then -1
		else if a.day>b.day then 1
		else if a.day<b.day then -1
		else 0
end;;


let dmap = DateMap.empty;;

let dmap = DateMap.add {month=1;day=2} "Michael";;
let dmap = DateMap.add {month=2;day=5} "John";;
let dmap = DateMap.add {month=6;day=10} "Smith";;
