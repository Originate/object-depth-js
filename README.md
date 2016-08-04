# JavaScript Object Depth

Determines the depth of JavaScript objects.

```js
objectDepth = require('object-depth')
objectDepth({})          // 0
objectDepth({ one: 1 }   // 1
objectDepth({
  user: {
    first: "Jean-Luc",
    last: "Picard"
  }
})                       // 2
```

