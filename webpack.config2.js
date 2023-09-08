/* eslint-disable indent */
'use strict'

const path = require('path')
const autoprefixer = require('autoprefixer')
const ESLintPlugin = require('eslint-webpack-plugin');
const miniCssExtractPlugin = require('mini-css-extract-plugin')
const PATHS = {
  MODULES: path.resolve('node_modules'),
  ROOT: path.resolve(),
  SRC: path.resolve('src'),
};

module.exports = {
  mode: 'development',
  entry: './src/javascript/main.js',
  output: {
    filename: 'main.js',
    path: path.resolve(__dirname, 'dist'),
  },
  plugins: [
    new ESLintPlugin({
        files: ['src/javascript/*.js'],
    }),
    new miniCssExtractPlugin(
        {
            filename: 'css/[name].css',
            chunkFilename: 'css/[id].css',
        },
    ),
  ],
  module: {
    rules: [
        {
            test: /\.(scss)$/,
            use: [
              {
                // Extracts CSS for each JS file that includes CSS
                loader: miniCssExtractPlugin.loader,
              },
              {
                // eslint-disable-next-line max-len
                // Interprets `@import` and `url()` like `import/require()` and will resolve them
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
        test: /\.(png|jpe?g|gif)$/,
        type: 'asset/resource',
        generator: {
          filename: '[name][ext]',
          publicPath: '../images',
          outputPath: 'images',
        },
      },
      {
        test: /\.(woff(2)?|ttf|eot|svg)(\?v=\d+\.\d+\.\d+)?$/,
        type: 'asset/resource',
        generator: {
          filename: '[name][ext]',
          publicPath: '../fonts',
          outputPath: 'fonts',
        },
      },
    ],
  },
}
