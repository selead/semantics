

((lastname) ->
  lastname.version = "0.3.5"

#  lastname.inclineWords ...

  lastname.findProperName = (lang, args...) ->
    inclines = lastname["plugins"]["#{lang}"]["inclines"]
    inclines.findProperName.apply @, args

)(window.lastName ||= {})