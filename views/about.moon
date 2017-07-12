-- views/about.moon
import Widget from require "lapis.html"

class About extends Widget
  content: =>
    div id: "main", ->
      div class: "su-cta"
      div class: "columns", ->
        div class: "column"
        div class: "column"
      div class: "columns", ->
        div class: "column"
        div class: "column"
      div class: "columns", ->
        div class: "column"
        div class: "column"
      div class: "columns", ->
        div class: "column"
      div class: "su-footer", ->
        p "Running on Lapis #{require "lapis.version"}"
