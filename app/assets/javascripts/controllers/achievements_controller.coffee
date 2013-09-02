RailsEmberApp.AchievementsController = Ember.ArrayController.extend

  sortProperties: [ 'achievedAt' ]
  sortAscending: false

  addAchievement: ->
    RailsEmberApp.Achievement.createRecord
      title: @get('newAchievement')
      achievedAt: new Date()
    @set('newAchievement', '')
    @get('store').commit()