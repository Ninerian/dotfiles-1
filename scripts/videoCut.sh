#!/bin/bash

declare -r PROGDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
declare -r FFMPEG=/usr/local/bin/ffmpeg

function main() {
 # exactly one argument required
    if [[ ($# -ne 1) && ($# -ne 2) && ($# -ne 3) && ($# -ne 4) ]]
    then
      usage
      exit 1
    fi

	declare -r startPoint=$1; shift
	declare -r endPoint=$1; shift
	declare -r fileName=$1; shift
	declare -r output=$1; shift

	makeDirectories;
	extractClip;
	combineCLips;
	#deleteDirectory tmp;
}

function usage() {
  echo
  echo
  echo usage:
  echo $0' <fileName>' 
  echo $1' <output>'
  echo $2' <startPoint>'
  echo $3' <endPoint>'
  echo
  echo
  echo 'Cuts a video end moves the part to the end'
  echo
  echo
  echo
}

function makeDirectories() {
	if [ ! -d 'result' ]
	    then
	    echo "result directory doesn't exist so I'am creating it for you."
	    mkdir  "result"
  	fi

  	if [ ! -d 'tmp' ]
	    then
	    echo "Temp directory doesn't exist so I'am creating it for you."
	    mkdir  "tmp"
  	fi
}

function deleteDirectory() {
	local directory=$1; shift

	rm -r $directory;
}

function getDuration() {
	$FFMPEG -i $fileName 2>&1 | grep Duration | awk '{print $2}' | tr -d ,
}

function extractClip() {
	local duration=$(getDuration);
	local extension=${fileName##*.}

	$FFMPEG -loglevel panic -hide_banner -ss $startPoint -i $fileName -t $endPoint -codec copy tmp/clip_start.${extension}
	$FFMPEG -loglevel panic -hide_banner -ss $endPoint -i $fileName -to $duration -codec copy tmp/clip_end.${extension}
	echo "file 'clip_end.${extension}'" > tmp/concat.txt
	echo "file 'clip_start.${extension}'" >> tmp/concat.txt
}

function combineCLips() {
	$FFMPEG -f concat -i tmp/concat.txt -codec copy result/$output
}


main "$@"
