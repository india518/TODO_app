class Item < ActiveRecord::Base
  attr_accessible :title, :description, :done
  
  validates :title,  :presence => true
    
  belongs_to :project
end
