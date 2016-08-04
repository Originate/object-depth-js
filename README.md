# JavaScript Object Depth

[![CircleCI](https://circleci.com/gh/Originate/object-depth-js.svg?style=shield)](https://circleci.com/gh/Originate/object-depth-js)
[![dependencies Status](https://david-dm.org/Originate/object-depth-js/status.svg)](https://david-dm.org/Originate/object-depth-js)
[![devDependencies Status](https://david-dm.org/Originate/object-depth-js/dev-status.svg)](https://david-dm.org/Originate/object-depth-js?type=dev)

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

