class Tag < ActiveRecord::Base
  attr_accessible :name, :user_id

  belongs_to :user
  has_many :problem_tag_ships
  has_many :problems, :through => :problem_tag_ship

  validate :name, :presence => true 
  validate :name, :uniqueness => true

  scope :id_and_name, select("id,name")
end
