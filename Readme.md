## itunes-lib

Reads and parses an iTunes Library.xml file to expose useful data within.

## Installation

```
  npm install itunes-lib
```
(not published yet)

## Usage

    ituneslib = require('itunes-lib');
    playlist = new ituneslib('/path/to/playlist.xml');

    playlist.size(); // 2

    playlist.songs(); // output below
    [
      {
        title: "Shell Games",
        artist: "Bright Eyes",
        album: "The People's Key",
        play_count: 2
      },
      {
        title: "Blackout",
        artist: "Anna Calvi",
        album: "Anna Calvi",
        play_count: 6
      }
    ]

## Development

Run the test suite with `cake test`, and build it for distribution with `cake build`. Made for node >= 0.8.0.
