define ["../../../app", "../views/showView"], (App) ->
  App.module "Page.Controllers", (Controllers, App, Backbone, Marionette, $, _) ->

    Controllers.Show =

      showPage: (page_id) ->
        page = new App.Page.Model id: page_id
        showView = new App.Page.Views.Show model: page

        App.mainRegion.show showView
          
