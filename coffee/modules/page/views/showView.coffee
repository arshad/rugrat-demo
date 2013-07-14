define ["../../../app", "tpl!../../../../sources/pages/default.tpl"], (App, Template) ->
  App.module "Page.Views", (Views, App, Backbone, Marionette, $, _) ->

    class Views.Show extends Marionette.ItemView
      template: Template
      className: 'page'

      initialize: ->
        page_id = @model.get 'id'
        _.defer =>
          require ['tpl!../sources/pages/' + page_id + '.tpl'], (tpl) =>
            @template = tpl
            @render()
