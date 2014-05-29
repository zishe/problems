pluck = (objs, name) ->
  [].concat.apply([], for o in objs
    v for k, v of o when k == name
  )
