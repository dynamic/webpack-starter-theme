/* eslint-disable indent */
'use strict'

const path = require('path')
const autoprefixer = require('autoprefixer')
const MiniCssExtractPlugin = require('mini-css-extract-plugin')
const BrowserSyncPlugin = require('browser-sync-webpack-plugin')

// Export configuration
module.exports = {
  mode: 'development',
  entry: './src/js/main.js',
  output: {
    filename: 'js/[name].bundle.js',
    path: path.resolve(__dirname, 'dist'),
  },
  devtool: 'inline-source-map', // used to map errors to source file
  plugins: [
    // used to extract CSS into a separate file
    new MiniCssExtractPlugin({
        filename: 'css/[name].bundle.css',
    }),
    new BrowserSyncPlugin({
      host: 'localhost',
      port: 3000,
      files: [
        './dist/css/main.bundle.css',
        './dist/js/main.bundle.js',
        './templates/**/*.{ss,html}',
      ],
      proxy: 'http://starter-theme.test/',
    }, { reload: true }),
  ],
  module: {
    rules: [
      {
        test: /\.(scss)$/,
        use: [
          {
            // Extracts CSS for each JS file that includes CSS
            loader: MiniCssExtractPlugin.loader,
          },
          {
            // Interprets `@import` and `url()` like `import/require()`
            // and will resolve them
            loader: 'css-loader',
          },
          {
            // Loader for webpack to process CSS with PostCSS
            loader: 'postcss-loader',
            options: {
              postcssOptions: {
                plugins: [
                  autoprefixer,
                ],
              },
            },
          },
          {
            // Loads a SASS/SCSS file and compiles it to CSS
            loader: 'sass-loader',
          },
        ],
      },
      {
        test: /\.(gif|png|avif|jpe?g)$/,
        type: 'asset/resource',
        generator: {
          filename: '[name][ext]',
          publicPath: 'images/',
          outputPath: 'images/',
        },
      },
      {
        test: /\.(woff(2)?|ttf|eot)$/,
        type: 'asset/resource',
        generator: {
          filename: '[name][ext]',
          publicPath: 'fonts/',
          outputPath: 'fonts/',
        },
      },
      {
        test: /\.(ico)$/,
        type: 'asset/resource',
        generator: {
          filename: '[name][ext]',
          publicPath: 'icons/',
          outputPath: 'icons/',
        },
      },
    ],
  },
}
