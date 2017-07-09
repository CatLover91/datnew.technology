-- views/about.moon
import Widget from require "lapis.html"

class About extends Widget
  content: =>
    div id: "main", ->
      div class: "su-cta"
      div class: "su-row", ->
        div class: "su-row-header"
        div class: "su-col"
        div class: "su-col"
      div class: "su-row", ->
        div class: "su-col"
        div class: "su-col"
      div class: "su-row", ->
        div class: "su-col"
        div class: "su-col"
      div class: "su-row", ->
        div class: "su-row-header"
        div class: "su-col su-center"
      div class: "su-footer", ->
        p "Running on Lapis #{require "lapis.version"}"
