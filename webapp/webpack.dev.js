const path = require('path');
const merge = require('webpack-merge');
const common = require('./webpack.common.js');

module.exports = merge(common, {
mode: 'development',
  devServer: {
    host: '0.0.0.0',
    port: 3003,
    hot: true,
    contentBase: path.join(__dirname, 'app/frontend'),
    watchContentBase: true,
  }
});

