fs = require 'fs'

itunes = require('../lib/itunes-lib.js')
itunesLib = new itunes('./iTunes Library.xml')

testCase = require("nodeunit").testCase

module.exports['Basic'] = testCase(

  # setUp: (callback) ->
  #   callback()
  # tearDown: (callback) ->
  #   callback()

  'Correctly determines the size of the library': (test) ->
    test.ok(itunesLib.size() == 112)
    test.done()
)
