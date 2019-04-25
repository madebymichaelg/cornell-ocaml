(* this is wrong but I can't move forward because the type checker thinks that
 * lookup returns type ext because that's the base case and idk how to get around that rn
 * will return=*)

type 'a tree =
	| Leaf
	| Node of 'a * 'a tree * 'a tree

type ('k, 'v) t = ('k * 'v) tree

let empty = Leaf

let rec insert k v = function 
	| Leaf -> Node((k,v),Leaf,Leaf)
	| Node ((key,valu),l,r) -> 
		if k<key then Node((key,valu),(insert k v l), r)
		else if k>key then Node((key,valu),l,(insert k v r))
		else Node ((key,v),l,r)

let lookup k = function
	| Leaf -> Failure "not found"
	| Node ((k,v),l,r) -> v

let rec interal_print_tree d = function
	| Leaf -> ""
	| Node ((k,v),l,r) -> (String.make d '\t') ^ "(" ^ (string_of_int k) ^ "," ^v ^ ")" ^  "\n" ^ (interal_print_tree (d+1) l) ^ (interal_print_tree (d+1) r)

let print_tree t = print_string (interal_print_tree 0 t)