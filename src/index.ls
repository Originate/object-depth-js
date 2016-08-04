object-depth = (object, depth = 1) ->
  for own key, value of object
    if typeof value is 'object'
      return object-depth value, depth+1
  depth


module.exports = object-depth
