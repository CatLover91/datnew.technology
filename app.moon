lapis = require "lapis"

class extends lapis.Application
  layout: require "views.layout"
  
  handle_404: =>
    status: 404, layout:false, "Not Found!"

  [home: "/"]: =>
    render:true
