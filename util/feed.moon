-- https://github.com/leafo/sitegen/blob/master/sitegen/plugins/feed.moon

render_feed = (root) ->
  concat = (list) ->
    html.builders.raw! html.build -> list

  format_date = (date) ->
    if date.fmt
      date\fmt "${http}"
    else
      tostring date

  html.build -> {
    raw [[<?xml version="1.0" encoding="utf-8"?>]]
    rss {
      version: "2.0"
      channel {
        title root.title
        link root.link
        description root.description
        concat for entry in *root
          parts = { }
          insert parts, title entry.title if entry.title
          insert parts, link entry.link if entry.link
          insert parts, pubDate format_date entry.date if entry.date
          insert parts, description cdata entry.description if entry.description
          item parts
      }
    }
  }

