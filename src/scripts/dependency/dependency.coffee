class Dependency # Note that this is a coffeescript class, not an ES6 class, but it still works fine
  greeting: -> 'hello'

`export default new Dependency()` # Backticks to revert to pure JS. See https://github.com/jashkenas/coffeescript/issues/3162
