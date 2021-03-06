CShopping.Views.Posts ||= {}

class CShopping.Views.Posts.IndexView extends Backbone.View
  template: CShopping.Templates.mustache['backbone/templates/posts/index']

  initialize: () ->
    @options.posts.bind('reset', @addAll)

  addAll: () =>
    @options.posts.each(@addOne)

  addOne: (post) =>
    view = new CShopping.Views.Posts.PostView({model : post})
    @$("tbody").append(view.render().el)

  render: =>
    $(@el).html(@template.render(posts: @options.posts.toJSON() ))
    @addAll()

    return this
