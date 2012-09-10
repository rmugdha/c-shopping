CShopping.Views.Posts ||= {}

class CShopping.Views.Posts.ShowView extends Backbone.View
  template: CShopping.Templates.mustache["backbone/templates/posts/show"]

  render: ->
    $(@el).html(@template.render(@model.toJSON() ))
    return this
