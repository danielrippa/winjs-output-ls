
  { stdin, out, outln } = dependency 'prelude.IO'
  { parse-output } = dependency 'primitive.Output'
  { double-quotes } = dependency 'native.String'

  #

  object-value = (object, name) -> value = object[ name ] ; if value is void then '' else double-quotes value

  #

  { objects, names } = parse-output stdin!

  #

  [ (double-quotes name) for name in names ] * ',' |> outln

  for object in objects

    [ (object-value object, name) for name in names ] |> outln

