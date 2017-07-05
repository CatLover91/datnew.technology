-- views/home.moon
import Widget from require "lapis.html"

class Home extends Widget
  content: =>
    div id: "main", ->
      div class: "nav", ->
        div class: "nav-side"
        div class: "nav-center", "Dat New"
        div class: "nav-side"
      div class: "cta", ->
        div class: "cta-block", ->
          div class: "image-cover", ->
            div class: "splash-cont", ->
              div class: "surtext", "Dat New"
              div class: "subtext", "Technology"
      div class: "su-bar", ->
        div class: "su-col su-center", ->
          p "Disrupt the status quo. Create the uncreatable."
      div class: "su-bar", ->
        div class: "su-col", ->
          h3 "Who are we?"
          p "We are a collective of 100x rockstar devs dedicated to creating needle-moving solutions. We leverage bleeding-edge technologies to attack multiple verticles for emerging industries. We live and breath synergy, and help hack growth into win-win narratives."
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
            li ->
              text "creating paradigm shifting "
              a target: "_blank", href: "https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/if...else", "AI-based"
              text " utilities at scale"
            li "pivoting your growth to ramp up vanity metrics into real, actionable insights"
            li "Seamlessly integrate cloud-based tools to empower users and acheive hyperconvergence"
      div class: "su-bar-image", ->
        div class: "su-image-gradient"
        div class: "su-bar", ->
          div class: "su-col su-center", ->
            div class: "quote-cont", ->
              div class: "fa fa-quote-left"
              div class: "quote", "These growth hackers really know their stuff. They truly are game changers."
              div class: "fa fa-quote-right"
            div class: "quote-attrib", "- some dude"
      div class: "su-bar", ->
        h3 class: "su-bar-header", "Meet the Team"
        div class: "su-col su-center", ->
          div class: "team-cont", ->
            div class: "team-member", ->
              div class: "member-image"
              div class: "member-name", "Mista Big Time"
              div class: "member-role", "CEO"
            div class: "team-member", ->
              div class: "member-image"
              div class: "member-name", "Captain L33t 3017"
              div class: "member-role", "CTO"
            div class: "team-member", ->
              div class: "member-image"
              div class: "member-name", "Elon Musk"
              div class: "member-role", "Angel Investor"
      div class: "su-bar", ->
        h3 class: "su-bar-header", "testimonials"
        div class: "su-col su-center slick", ->
          video
          video
      div class: "su-footer", ->
        p "Running on Lapis #{require "lapis.version"}"
    script type: "text/javascript", src: "//code.jquery.com/jquery-1.11.0.min.js"
    script type: "text/javascript", src: "//code.jquery.com/jquery-migrate-1.2.1.min.js"
    script type: "text/javascript", src: "//cdn.jsdelivr.net/jquery.slick/1.6.0/slick.min.js"
    script type: "text/javascript", src: "/static/js/home.js"
