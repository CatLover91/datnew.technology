lapis = require "lapis"

class extends lapis.Application
  layout: require "views.layout"
  
  handle_404: =>
    status: 404, layout:false, "Not Found!"

  [index: "/"]: =>
    @html ->
      h2 "Welcome to datnew.technology"
      p "Running on Lapis #{require "lapis.version"}"
