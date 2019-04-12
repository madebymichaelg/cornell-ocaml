let rec unimodal lst peaked = match lst with
	| [] -> true
	| a::b::t -> if (peaked=false && (a+1)=b) then unimodal (b::t) false
		else if peaked=false && a=(b+1) then unimodal (b::t) true
		else if peaked=true && a=(b+1) then unimodal (b::t) true
		else false
	| h::t -> true;;