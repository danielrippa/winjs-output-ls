
  { stdin, lnout } = dependency 'prelude.IO'
  { parse-output } = dependency 'primitive.Output'
  { new-card } = dependency 'tui.Card'

  { objects, names, types, widths, styles } = parse-output stdin!

  card = new-card names, types, widths, styles

  for object in objects =>

    card.object = object

    lnout card
    lnout ''


