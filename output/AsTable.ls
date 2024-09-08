
  { stdin } = dependency 'prelude.IO'
  { parse-output } = dependency 'primitive.Output'
  { out, outln } = dependency 'prelude.IO'
  { new-table } = dependency 'tui.Table'

  { objects, names, types, widths, styles } = stdin! |> parse-output

  table = new-table names, types, widths, styles

  for object in objects => table.add-row object

  out table




