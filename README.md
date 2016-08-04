# JavaScript Object Depth

[![CircleCI](https://circleci.com/gh/Originate/object-depth-js.svg?style=shield)](https://circleci.com/gh/Originate/object-depth-js)

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

