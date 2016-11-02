# react-prototyping
Skeleton repository to get started with prototyping applications with React, Sketch + FramerJS

## Requirements

 - Node
 - [Sketch](https://www.sketchapp.com)
 - [Framer Generator](https://github.com/koenbok/Framer#get-started)

## Getting started

 1. Open file `prototype.sketch` in Sketch
 1. Open Framer Generator and import the layers from Sketch
 1. Run `npm install`
 1. Run `npm run dev` to view the prototype on [http://localhost:8080](http://localhost:8080)

Changes to `app.coffee` cause the prototype to reload. After changing the Sketch file, re-run the Generator and reload the web browser.

![](generator.png)
 
## Publication

In order to show the prototype to others, execute `npm run dist` and copy the contents of the `prototype.framer` folder to a web server.
