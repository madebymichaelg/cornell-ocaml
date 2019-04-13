type 'a tree =
| Leaf
| Node of 'a * 'a tree * 'a tree

let t = 
  Node(4,
    Node(2,
      Node(1,Leaf,Leaf),
      Node(3,Leaf,Leaf)
    ),
    Node(5,
      Node(6,Leaf,Leaf),
      Node(7,Leaf,Leaf)
    )
  )

let t_2 =
  Node(4,
    Node(2,
      Node(1,Leaf,Leaf),
      Node(3,Leaf,Leaf)
    ),
    Node(5,
      Leaf,
      Node(7,Leaf,Leaf)
    )
  )

let rec depth = function
  | Leaf -> 0
  | Node (_,r,l) -> 
    let r_d = 1+depth(r) in 
      let l_d = 1+depth(l) in (
        if r_d>l_d then r_d else l_d);;

let rec shape a b = match a with
  | Leaf -> b=Leaf
  | Node (_,a_r,a_l) -> match b with
    | Node (_,b_r,b_l) -> shape a_r b_r && shape a_l b_l
    | Leaf -> false

let eval x comp t = match t with
  | Leaf -> true
  | Node (v,_,_) -> comp x v

let rec branch = function
  | Leaf -> true
  | Node (v,a,b) -> (eval v (>) a  && eval v (<) b  && branch a && branch b)

