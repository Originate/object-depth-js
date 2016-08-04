object-depth = (object, depth = 1) ->
  result = depth
  for own key, value of object
    if typeof value is 'object'
      result = object-depth value, depth+1
  result


module.exports = object-depth
