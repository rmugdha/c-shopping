class CShopping.Models.Post extends Backbone.Model
  paramRoot: 'post'

  defaults:
    title: null
    content: null

class CShopping.Collections.PostsCollection extends Backbone.Collection
  model: CShopping.Models.Post
  url: '/posts'
