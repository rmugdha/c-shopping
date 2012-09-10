CShopping.Views.Posts ||= {}

class CShopping.Views.Posts.PostView extends Backbone.View
  template: CShopping.Templates.mustache["backbone/templates/posts/post"]

  events:
    "click .destroy" : "destroy"

  tagName: "tr"

  destroy: () ->
    @model.destroy()
    this.remove()

    return false

  render: ->
    $(@el).html(@template.render(@model.toJSON() ))
    return this
