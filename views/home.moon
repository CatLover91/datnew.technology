-- views/home.moon
import Widget from require "lapis.html"

class Home extends Widget
  content: =>
    div id: "main", ->
      div class: "cta", ->
        div class: "cta-block", ->
          h1 "datnew.technology"
        
        div class: "scroll-btn", ->
          div class: "fa fa-arrow-circle-o-down"
      div class: "su-bar", ->
        div class: "su-col su-center", ->
          p "Disrupt the status quo. Create the uncreatable."
      div class: "su-bar", ->
        div class: "su-col", ->
          h3 "Who are we"
          p "We are a collective of 100x rockstar devs dedicated to creating needle-moving solutions. We leverage bleeding-edge technologies to attack multiple verticles for emerging industries. We live and breath synergy, and help hack growth into win-win narratives"
        div class: "su-col", ->
          div class: "su-image image-1"
      div class: "su-bar", ->
        div class: "su-col", ->
          div class: "su-image image-2"
        div class: "su-col", ->
          h3 "What we do"
          p "We deliever end-to-end solutions for the world's thought leaders. This includes:"
          ul ->
            li "performing agile development with turn-key solutions"
            li "creating paradigm shifting AI-based utilities at scale"
            li "pivoting your growth to ramp up vanity metrics into real, actionable insights"
            li "Seamlessly integrate cloud-based tools to empower users and acheive hyperconvergence"
      div class: "su-bar-image", ->
        div class: "su-image-gradient"
        div class: "su-bar", ->
          div class: "su-col su-center", ->
            div class: "quote-cont", ->
              div class: "fa fa-quote-left"
              div class: "quote", "These growth hackers really know their stuff. They are truly game changers."
              div class: "fa fa-quote-right"
            div class: "quote-attrib", "- some guy"
      div class: "su-footer", ->
        p "Running on Lapis #{require "lapis.version"}"
