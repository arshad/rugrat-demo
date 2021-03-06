// Generated by CoffeeScript 1.3.1
(function() {

  define(["../../../app", "../views/showView"], function(App) {
    return App.module("Page.Controllers", function(Controllers, App, Backbone, Marionette, $, _) {
      return Controllers.Show = {
        showPage: function(page_id) {
          var page, showView;
          page = new App.Page.Model({
            id: page_id
          });
          showView = new App.Page.Views.Show({
            model: page
          });
          return App.mainRegion.show(showView);
        }
      };
    });
  });

}).call(this);
