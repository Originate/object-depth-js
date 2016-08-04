object-depth = (object) ->
  return 0 unless typeof object is 'object'

  [value for own _, value of object]
   |> (.map object-depth)
   |> -> Math.max 0, ...it
   |> (+ 1)


module.exports = object-depth
