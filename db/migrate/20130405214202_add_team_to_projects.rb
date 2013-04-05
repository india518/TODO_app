class AddTeamToProjects < ActiveRecord::Migration
  def up
    add_column :projects, :team_id, :integer
  end
  
  def down
    remove_column :projects, :team_id
  end
end
