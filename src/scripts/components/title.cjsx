`import greeting from '../greeting'`
`import React from 'react'`

Title = React.createClass
  render: ->
    <div className="title">
      {greeting()}, world!
    </div>

`export default Title` # Backticks to revert to pure JS. See https://github.com/jashkenas/coffeescript/issues/3162
