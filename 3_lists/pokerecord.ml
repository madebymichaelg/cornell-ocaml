type poketype = TNormal | TFire | TWater

type pokemon = {name:string; hp:int; poketype:poketype}

let charizard = {name = "char"; hp=100; poketype=TFire}

let metapod = {name="meta"; hp=50; poketype=TNormal}

let bulbasoar = {name="bulba"; hp=75; poketype=TWater}

let pokemen = [charizard; metapod; bulbasoar]

let rec hit_points_max max = function 
| [] -> max
| h::t -> if h.hp>max then hit_points_max h.hp t else hit_points_max max t

let hp_max lst = hit_points_max 0 lst