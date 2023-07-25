open Midgard.Point2

let () =
  let p = pointAlongSegment { x = 4.0; y = 4.0} { x = 8.0; y = 8.0} in
  let f = approximatelyEqual ~e:0.000000001 { x = 4.0; y = 4.0} { x = 4.0; y = 4.0} in
  let a = { x = 4.0; y = 4.0} - { x = 1.5; y = 2.0} in
  print_float p.x;
  print_endline "";
  print_float p.y;
  print_endline "";

  print_float a.x;
  print_endline "";
  print_float a.y;
  print_endline "";

  print_int (Bool.to_int f);