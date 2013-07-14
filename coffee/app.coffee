define ["backbone", "marionette"], (Backbone,  Marionette) ->
  @App = new Backbone.Marionette.Application()

  @App.addRegions
    mainRegion: "#main"

  @App.on "initialize:after", ->
    Backbone.history.start() unless Backbone.history.started

  @App
