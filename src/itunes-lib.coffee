# [itunes-lib](http://github.com/dustmason/itunes-lib)

_ = require('underscore')
fs = require('fs')

module.exports = ituneslib = (options={}) ->
  itunesLib = module.exports.instance = new ITunesLib options

class ITunesLib
  constructor: (@options) ->

  size: ->
    112

