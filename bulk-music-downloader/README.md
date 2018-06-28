# Bulk Music Downloader

Windows Batch Script that bulk downloads music from any public YouTube playlist. You can also make your own playlist of all the songs you want to download.

### Pre-requisites
* You have the Windows [youtube-dl](http://rg3.github.io/youtube-dl/) executable
* You have the Windows [ffmpeg](http://ffmpeg.org/) executable
* You have a public YouTube playlist in the format ``` youtube.com/playlist?list=??? ```

### Process
1) Script will download each video as an .m4a audio file in the ./m4a directory
2) Script will convert each .m4a audio file to .mp3 and place it in the ./mp3 directory

### Usage
Run convert.bat and insert the playlist URL of format ``` youtube.com/playlist?list=??? ```


### Features
* Files that already exist will not be re-downloaded nor re-converted
