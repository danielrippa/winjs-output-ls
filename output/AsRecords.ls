
  { stdin, outln, out } = dependency 'prelude.IO'
  { parse-output } = dependency 'primitive.Output'

  { objects } = stdin! |> parse-output

  for object, index in objects

    if index isnt 0 => outln '---'

    for k,v of object => outln "#k: #v"

