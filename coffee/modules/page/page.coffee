define ["../../app", "./controllers/showController"], (App, ShowController) ->
  App.module "Page", (Page, App, Backbone, Marionette, $, _) ->

    # Page model.
    class Page.Model extends Backbone.Model
      url: '/api/v1/pages'

    # Page collection.
    class Page.Collection extends Backbone.Collection
      model: Page.Model
      url: '/api/v1/pages'

    # Page Router.
    class Page.Router extends Marionette.AppRouter
      appRoutes:
        'page/:id': 'showPage'

    API =
      showPage: (id) ->
        App.Page.Controllers.Show.showPage id

    App.addInitializer ->
      new Page.Router
        controller: API

