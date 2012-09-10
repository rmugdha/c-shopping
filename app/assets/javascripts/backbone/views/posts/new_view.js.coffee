CShopping.Views.Posts ||= {}

class CShopping.Views.Posts.NewView extends Backbone.View
  template: CShopping.Templates.mustache['backbone/templates/posts/new']

  events:
    "submit #new-post": "save"

  constructor: (options) ->
    super(options)
    @model = new @collection.model()

    @model.bind("change:errors", () =>
      this.render()
    )

  save: (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.unset("errors")

    @collection.create(@model.toJSON(),
      success: (post) =>
        @model = post
        window.location.hash = "/#{@model.id}"

      error: (post, jqXHR) =>
        @model.set({errors: $.parseJSON(jqXHR.responseText)})
    )

  render: ->
    $(@el).html(@template.render(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
