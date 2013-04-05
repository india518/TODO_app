# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
ActiveRecord::Base.transaction do
  
  Team.create(name: "Awesome Team")
  Project.create(title: "Awesome New Project",
                 description: "Look at this project. It is a nice project.",
                 team_id: 1)
  Item.create(project_id: 1, title: "First Task",
              description: "This is the first task of my project", done: false)
  Item.create(project_id: 1, title: "Second Task",
              description: "This is the second task of my project", done: false)
  Item.create(project_id: 1, title: "Third Task",
              description: "Third and final task!", done: false)  
  
  Project.create(title: "Awesome Game Project",
              description: "For awesome fun time happy thing!",
              team_id: 1)
  Item.create(project_id: 1, title: "Make some rules",
              description: "Ain't a game without rules to win by", done: false)
  Item.create(project_id: 1, title: "Make pretty pictures",
              description: "Draw some pretty pictures for the game", done: false)
  Item.create(project_id: 1, title: "Play test",
              description: "Test this game out!", done: false)  
  
  Team.create(name: "Homemakers")  
  Project.create(title: "Restore Couch",
                 description: "Get that antique couch restored and usable",
                 team_id: 2)
  Item.create(project_id: 2, title: "Find an upholsterer",
              description: "Ask neighbors for recommendations", done: false)
  Item.create(project_id: 2, title: "Get an Estimate",
              description: "Contact upholstery company and give them info on the couch", done: false)
  Item.create(project_id: 2, title: "Make a Budget",
              description: "Can we afford leather cushion?", done: false)
  Item.create(project_id: 2, title: "Make a decision",
              description: "Face it, you can't afford this yet!", done: false)
 
end