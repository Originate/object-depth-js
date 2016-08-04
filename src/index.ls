object-depth = (object) ->
  | typeof object isnt 'object' => return 0

  [value for own _, value of object]
   |> (.map object-depth)
   |> -> Math.max 0, ...it
   |> (+ 1)


module.exports = object-depth
