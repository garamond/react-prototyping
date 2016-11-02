# Meta

Framer.Info =
  title: "My Application"

# Imports

importedLayers = Framer.Importer.load("imported/prototype@1x")

{ Button } = require('Button')

# React

React =  require('react')
{ renderToString } = require('react-dom/server')

class ReactLayer extends Layer
  constructor: (options) ->
    super(options)
    @height = 0
    @width = 0
    @style =
      width: 'auto'
      height: 'auto'
      backgroundColor: 'transparent'
    { component, props, children } = options
    # render React component
    @html = renderToString (React.createElement component, props, children)
    # connect handlers to Framer events
    for k,v of props
      if k.match(/^on/)
        eventName = k.split(/^on/)[1]
        try
          @on(Events[eventName], v)
        catch
          throw new Error("No handler found for event #{k} for React component #{component.name}")

# Prototype

clickMe = new ReactLayer
  component: Button
  props:
    small: true
    accent: true
    onClick: () -> importedLayers.main.visible = !importedLayers.main.visible
  children: 'Click me!'
