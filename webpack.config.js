'use strict';

module.exports = {
  output: {
    path: __dirname + '/prototype.framer/',
    filename: 'app.js',
  },
  devtool: 'source-map',
  entry: __dirname + '/app.coffee',
  module: {
    rules: [
      {
        test: /\.js$/,
        exclude: /node_modules/,
        loader: "babel",
        query:
        {
          presets:["es2015", "react"]
        }
      },
      {
        test: /\.coffee$/,
        loaders: ['coffee-loader'],
        exclude: /node_modules/,
      }
    ]
  },
  resolve: {
    modules: [ 'node_modules', __dirname + '/components/' ]
  }
};
