fs = require 'fs'
moment = require 'moment'

itunes = require '../lib/itunes-lib.js'
itunesLib = new itunes './recent.xml'

testCase = require("nodeunit").testCase

module.exports['Basic'] = testCase(

  'Correctly determines the size of the library': (test) ->
    test.equal itunesLib.size(), 2
    test.done()

  'Correctly extracts song titles, artists and albums': (test) ->
    songs = itunesLib.songs()
    first_song = songs[0]
    test.equal first_song.title, "Shell Games"
    test.equal first_song.artist, "Bright Eyes"
    test.equal first_song.album, "The People's Key"
    second_song = songs[1]
    test.equal second_song.title, "Blackout"
    test.equal second_song.artist, "Anna Calvi"
    test.equal second_song.album, "Anna Calvi"
    test.done()

  'Correctly extracts play counts': (test) ->
    songs = itunesLib.songs()
    test.equal songs[0].play_count, 2
    test.equal songs[1].play_count, 6
    test.done()

  'Correctly extracts dates (added and played)': (test) ->
    songs = itunesLib.songs()
    test.equal songs[0].date_added.getTime(), moment("2011-03-10T20:45:40Z").toDate().getTime()
    test.equal songs[0].play_date.getTime(), moment("2013-08-14T00:37:42Z").toDate().getTime()
    test.done()
)
