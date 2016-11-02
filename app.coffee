# Meta

Framer.Info =
  title: "My Application"

# Imports

importedLayers = Framer.Importer.load("imported/prototype@1x")

{ Button } = require('Button')

# React

React =  require('react')
{ renderToString } = require('react-dom/server')

r = (comp, attrs, kids) ->
  new Layer
    style:
      width: 'auto'
      height: 'auto'
      backgroundColor: 'transparent'
    html: renderToString (React.createElement comp, attrs, kids)

# Prototype

button1 = r(Button, {}, "Click me!")
button1.on(Events.Click, () -> importedLayers.main.visible = !importedLayers.main.visible)
