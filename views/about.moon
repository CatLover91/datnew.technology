-- views/about.moon
import Widget from require "lapis.html"

class About extends Widget
  content: =>
    div id: "main", ->
      div class: "su-footer", ->
        p "Running on Lapis #{require "lapis.version"}"
