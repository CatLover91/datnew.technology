lapis = require "lapis"

class extends lapis.Application
  layout: require "views.layout"
  
  handle_404: =>
    status: 404, layout:false, "Not Found!"

  [index: "/"]: =>
    @html ->
      div id: "main", ->
        div class: "cta", ->
          div class: "cta-block", ->
            h1 "datnew.technology"
          
          div class: "scroll-btn", ->
            div class: "fa fa-arrow-circle-o-down"

        p "Running on Lapis #{require "lapis.version"}"
        
