const path = require("path")

const outputTarget = process.env.NODE_ENV === 'production' ? path.resolve(__dirname, "src/main/resources/static/js") : path.resolve(__dirname, "target/classes/static/js");

module.exports = {
  entry: {
    'bundle-generated': `${__dirname}/src/main/webapp/js/index.js`
  },

  output: {
    filename: "[name].js",
    path: outputTarget
  },

  mode: "production",
  module: {
    rules: [
      {
        test: /\.js$/,
        exclude: [
          /node_modules/
        ],
        use: [
          { loader: "babel-loader" }
        ]
      }
    ]
  }
}
