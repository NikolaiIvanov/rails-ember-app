RailsEmberApp.AchievementsNewController = Ember.Controller.extend

  sortProperties: [ 'achievedAt' ]
  sortAscending: false

  isValid: (->
    #default condition of error message and isValid
    true
  ).property('newAchievement')

  addAchievement: ->
    data = @parseInput @get('newAchievement')
    RailsEmberApp.Achievement.createRecord
      title: data['title']
      achievedAt: data['achievedAt']
    @set('newAchievement', '')
    @get('store').commit()
