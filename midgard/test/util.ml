let expect_near value res kEpsilon =
  assert (Float.abs (value -. res) < kEpsilon)
