fs = require 'fs'
_ = require 'underscore'

itunes = require('../lib/itunes-lib.js')
itunesLib = new itunes('./recent.xml')

testCase = require("nodeunit").testCase

module.exports['Basic'] = testCase(

  # setUp: (callback) ->
  #   callback()
  # tearDown: (callback) ->
  #   callback()

  'Correctly determines the size of the library': (test) ->
    test.ok(itunesLib.size() == 2)
    test.done()

  'Correctly extracts songs from the playlist': (test) ->
    songs = [
      {
        title: "Shell Games"
        artist: "Bright Eyes"
        album: "The People's Key"
        play_count: 2
        # date_added:
        # play_date:
      }
      {
        title: "Blackout"
        artist: "Anna Calvi"
        album: "Anna Calvi"
        play_count: 6
        # date_added:
        # play_date:
      }
    ]
    test.ok(_.isEqual(itunesLib.songs(), songs))
    test.done()
)
