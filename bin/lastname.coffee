#!/usr/bin/env coffee
#
lastname = require "../lib/index"
sys = require "sys"


readFile = (fname) ->


word = process.argv[2]
switch word
  when "help", undefined
    console.log "help here"
  when "-f"
    console.log  lastname.findInFile process.argv[3]
  else
    console.log "#{sys.inspect lastname.findProperName process.argv[2..]}"

return


