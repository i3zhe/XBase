class Tag < ActiveRecord::Base
  attr_accessible :name, :user_id

  belongs_to :user
  has_many :problem_tag_ships
  has_many :problems, :through => :problem_tag_ship
end
