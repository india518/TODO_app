class Item < ActiveRecord::Base
  attr_accessible :title, :description, :done, :project_id
  
  validates :title,  :presence => true
    
  belongs_to :project
  
  def done?
    return "Complete!" if done == 1
    "Incomplete"
  end
  
end
