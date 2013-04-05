class TeamMember < ActiveRecord::Base
  attr_accessible :user_id, :team_id
  
  validates :user_id, :team_id, :presence => true
  
  belongs_to :users
  belongs_to :teams
end
