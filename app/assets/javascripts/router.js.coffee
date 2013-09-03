# For more information see: http://emberjs.com/guides/routing/

RailsEmberApp.Router.map (match)->
  # @resource('posts')

  @resource 'achievements', ->
    @route 'new'