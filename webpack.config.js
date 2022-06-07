const path = require("path")


module.exports = {
  entry: {
    'bundle-generated': `${__dirname}/src/main/webapp/js/index.js`
  },

  output: {
    filename: "[name].js",
    path: path.resolve(__dirname, "target/classes/static/js")
    // path: path.resolve(__dirname, "src/main/resources/static/js")
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
