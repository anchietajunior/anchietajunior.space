const webpack = require('webpack')
const { environment } = require('@rails/webpacker')
const dotenv = require('dotenv')
const { VueLoaderPlugin } = require('vue-loader')
const vue = require('./loaders/vue')

// const config = require("@rails/webpacker/package/config")
// config.publicPath = `${host}/packs/`

// include dotenv in project webpack
const dotenvFiles = [
  `.env.${process.env.NODE_ENV}.local`,
  '.env.local',
  `.env.${process.env.NODE_ENV}`,
  '.env'
]
dotenvFiles.forEach((dotenvFile) => {
  dotenv.config({ path: dotenvFile, silent: true })
})

environment.plugins.prepend('Environment', new webpack.EnvironmentPlugin(JSON.parse(JSON.stringify(process.env))))


environment.plugins.prepend('VueLoaderPlugin', new VueLoaderPlugin())
environment.loaders.prepend('vue', vue)
module.exports = environment
