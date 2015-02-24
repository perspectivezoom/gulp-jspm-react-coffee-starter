`import greeting from './greeting'`
`import Title from './components/title'`
`import React from 'react'`

console.log "#{greeting()} world!"
React.render(
  <Title />,
  document.getElementById('content')
)