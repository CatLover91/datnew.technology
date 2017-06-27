import Widget from require "lapis.html"

class Layout extends Widget
  head: =>
    meta charset: "UTF-8"

    link rel: "icon", type: "image/png", href: "/static/images/favicon.png"

    title ->
        text "datnew.technology"

    meta property: "og:site_name", content: "datnew.technology"
    meta property: "og:image", content: page_image

    meta property: "twitter:image", content: "/static/images/share-icon.jpg"

    link rel: "canonical", href: "https://datnew.technology"

    meta property: "og:description", content: "Tomorrow's meme technology, today."
    meta name: "description", content: "Tomorrow's meme technology, today."

    meta name: "viewport", content: "width=device-width, initial-scale=1"
    
    link rel: "stylesheet", href: "https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"

    link rel: "stylesheet", href: "static/main.css"

  header: =>
    div class: "header"

  footer: =>
    div class: "footer"

  main: => @content_for "inner"

  all_js: =>
    script type: "text/javascript", src: "/static/main.js"

  content: =>
    html_5 ->
      head ->
        @head!

      body ->
        @header!
        @main!
        @footer!
        @all_js!
