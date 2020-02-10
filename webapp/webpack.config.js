/** TODO
    - imitate liiga gulp
    - clean package.json
*/
const path = require('path');
const webpack = require('webpack');
const autoprefixer = require('autoprefixer');
const VueLoaderPlugin = require('vue-loader/lib/plugin')

module.exports = {
  mode: 'development',
  entry: {
    user: './app/frontend/js/user.jsx'
  },
  output: {
    path: path.join(__dirname, 'app/assets/javascripts/build/'),
    filename: '[name].js',
    publicPath: '/static/',
  },
  module: {
    rules: [
      {
        test: /\.jsx?$/,
        exclude: /node_modules/,
        loader: 'babel-loader',
        options: {
          presets: ['@babel/preset-env']
        }
      },
      {
        test: /\.vue$/,
        exclude: /node_modules/,
        loader: 'vue-loader'
      },
      {
        test: /\.s?css$/,
        use: [
          'style-loader',
          'css-loader',
          {
            loader: 'postcss-loader',
            options: { plugins: [ autoprefixer ] },
          },
          'sass-loader',
        ]
      },
      {
        test: /\.(png|jpg|woff|woff2)$/,
        loader: 'url-loader',
        options: { limit: 8 * 1024 }
      },
      {
        test: /\.(png|jpe?g|gif|svg|woff|woff2|ttf|eot|ico)$/,
        loader: 'file-loader?name=assets/[name].[hash].[ext]'
      },
    ]
  },
  resolve: {
    alias: {
      vue$: 'vue/dist/vue.esm.js',
      OurCommonPath: path.join(__dirname, 'app/frontend/js/common'),
      ScssVariables: path.join(__dirname, 'app/frontend/css/variables')
    },
  },
  plugins: [
    new webpack.NamedModulesPlugin(),
    new VueLoaderPlugin(),
  ],
  devServer: {
    host: '0.0.0.0',
    port: 3003,
    hot: true,
    contentBase: path.join(__dirname, 'app/frontend'),
    watchContentBase: true,
  }
};
