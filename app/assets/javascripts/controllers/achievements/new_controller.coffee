RailsEmberApp.AchievementsNewController = Ember.Controller.extend

  sortProperties: [ 'achievedAt' ]
  sortAscending: false

  isValid: (->
    #default condition of error message and isValid
    true
  ).property('newAchievement')

  #Content null by default
  content: null

  #Input and error by default is empty string
  input: ""
  errors: ""

  addAchievement: ->
    achievement = @get('content')

    if achievement
      achievement.set('input', @get('input'))
    else
      achievement = RailsEmberApp.Achievement.createRecord({input: @get('input')})

    achievement.save()
    @set('content', achievement)