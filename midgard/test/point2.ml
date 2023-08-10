open Midgard.Point2
open OUnit2
open Util

let testMidpoint _ =
  let p = pointAlongSegment { x = 4.0; y = 4.0 } { x = 8.0; y = 8.0 } in
  let p1 = { x = 6.0; y = 6.0 } in
  assert (equal p p1);

  let p =
    pointAlongSegment ~distance:0.75 { x = 4.0; y = 4.0 } { x = 8.0; y = 8.0 }
  in
  let p1 = { x = 7.0; y = 7.0 } in
  assert (equal p p1)

let testDistance _ =
  expect_near
    (distance { x = 4.0; y = 4.0 } { x = 7.0; y = 8.0 })
    5.0 ll_epsilon

let testDistanceSquared _ =
  expect_near
    (distanceSquared { x = 4.0; y = 4.0 } { x = 8.0; y = 8.0 })
    32.0 ll_epsilon

let tests =
  "test suite for point2"
  >::: [
         "testMidpoint" >:: testMidpoint;
         "testDistance" >:: testDistance;
         "testDistanceSquared" >:: testDistanceSquared;
       ]
