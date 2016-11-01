# Meta

Framer.Info =
  title: "My Application"

# Imports

importedLayers = Framer.Importer.load("imported/prototype@1x")

import Button from 'Button'

# React

import React from 'react'
import { renderToString } from 'react-dom/server'

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
