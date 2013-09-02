RailsEmberApp.AchievementsRoute = Ember.Route.extend

  model: -> RailsEmberApp.Achievement.find()