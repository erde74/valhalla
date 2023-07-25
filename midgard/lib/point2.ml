let ll_epsilon: float = 0.00002

type point2 = 
{
  x: float;
  y: float;
}

(* compares to points *)
let equal p1 p2 = 
  (Float.compare p1.x p2.x) == 0 && (Float.compare p1.y p2.y) == 0

(* compares two floats *)
let equalf ?(e = ll_epsilon) f1 f2 = 
    Float.abs(f1 -. f2) <= e 

let approximatelyEqual ?(e = ll_epsilon) p1 p2 =
  (equalf p1.x p2.x ~e:e) && (equalf p1.y p2.y ~e:e)

(* Get the distance squared from point p1 to point p2. *)
let distanceSquared p1 p2 = 
  let a = p1.x -. p2.x in
  let b = p1.y -. p2.y in
  a *. a +. b *. b

(* Get the distance from point p1 to point p2. *)
let distance p1 p2 = 
  Float.sqrt (distanceSquared p1 p2)

(*
  Returns the point along the segment between this point and the provided point using the provided
  distance along. A distance of .5 would be the point halfway between the two points. A distance of
  .25 would be 25% of the way from this point to the provided point. The default distance is .5, so
  the midpoint

  distance   the percentage along the segment to place the output point
*)
let pointAlongSegment ?(distance = 0.5) p1 p2 = 
  { 
    x = p1.x +. distance *. (p2.x -. p1.x); 
    y = p1.x +. distance *. (p2.y -. p1.y);
  }

let (+) p1 p2 = { x = p1.x +. p2.x; y = p1.y +. p2.y }
let (-) p1 p2 = { x = p1.x -. p2.x; y = p1.y -. p2.y }

let closestPoint = true