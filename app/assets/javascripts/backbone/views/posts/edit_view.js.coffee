CShopping.Views.Posts ||= {}

class CShopping.Views.Posts.EditView extends Backbone.View
  template : CShopping.Templates.mustache['backbone/templates/posts/edit']

  events :
    "submit #edit-post" : "update"

  update : (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.save(null,
      success : (post) =>
        @model = post
        window.location.hash = "/#{@model.id}"
    )

  render : ->
    $(@el).html(@template.render(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
