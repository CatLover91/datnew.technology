const path = require( 'path' );
const webpack = require( 'webpack' );
const ExtractTextPlugin = require( 'extract-text-webpack-plugin' );
const CleanWebpackPlugin = require('clean-webpack-plugin');

var isBundle = true;
var fontLocal = 'file-loader?name=[name].[ext]';
var fontBundle = 'file-loader?name=assets/fonts/[name].[ext]';
var fontConfig = isBundle ? fontBundle : fontLocal;

function makeStyleLoader( type ) {
  const cssLoader = {
    loader: 'css-loader',
    options: {
      minimize: true,
      importLoaders: 1,
      name: 'styles/[name].[ext]'
    }
  };
  const loaders = [ cssLoader ];
  //loaders.push('resolve-url-loader');
  loaders.push({ loader: 'postcss-loader', options: { 
    config: {
      path: './postcss.config.js'
    }
  }});
  if ( type )
    loaders.push( type + '-loader' );
  if ( true ) {
    return ExtractTextPlugin.extract( {
      use: loaders,
      fallback: 'vue-style-loader'
    } );
  } else {
    return [ 'vue-style-loader' ].concat( loaders );
  }
}

module.exports = {
    entry: {
      'follower-report': './js/follower-report.js',
      'follower-landing': './js/follower-landing.js'
    },
    output: {
      path: path.resolve( __dirname, '../' ),
      filename: 'assets/js/[name].js'
    },
    module: {
      rules: [{
        test: /\.vue$/,
        loader: 'vue-loader',
        options: {
          loaders: {
            css: makeStyleLoader(),
            scss: makeStyleLoader( 'sass' ),
            sass: makeStyleLoader( 'sass' )
          }
        }
      }, {
        test: /\.js$/,
        loader: 'babel-loader',
        exclude: /node_modules/
      }, {
        test: /\.css$/,
        use: makeStyleLoader()
      }, {
        test: /\.scss$/,
        use: makeStyleLoader('sass')
      }, {
        test: /\.(png|jpg)$/,
        loader: 'file-loader',
        options: {
          name: 'assets/images/[name].[ext]'
        }
      },
      {
        test: /\.(eot|ttf|woff|woff2)$/, 
        loader: 'file-loader',//fontConfig,
        options: {
          path: path.resolve( __dirname, './' ),
          name: 'assets/fonts/[name].[ext]',
          
          publicPath: '../../'
          //outputPath: 'assets/'
        }
      }]
    },
    resolve: {
      extensions: [ '.js', '.vue', '.json', '.scss' ],
       alias: {
        'vue$': 'vue/dist/vue.common.js',
         'home': path.resolve( __dirname, '..' )
      }  
    },
    /*plugins: env.production ? [
      new webpack.DefinePlugin( {
        'process.env': {
          NODE_ENV: '"production"'
        }
      } ),
      new webpack.optimize.UglifyJsPlugin( {
        compress: {
          warnings: false
        }
      } ),
    ] : [
    ],*/
    devtool: '#cheap-module-eval-source-map',
    plugins: [
      new CleanWebpackPlugin([ 'assets' ], { root: path.resolve(__dirname, '../'), verbose: true }),
      new ExtractTextPlugin( {
        filename: './assets/css/[name].min.css'
      } )
    ]
};
