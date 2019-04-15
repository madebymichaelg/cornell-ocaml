let rec tree_map f  = function
	| Leaf -> Leaf
	| Node (v,r,l) -> Node (f v,tree_map f r, tree_map f l)