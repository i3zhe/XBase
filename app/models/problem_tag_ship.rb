class ProblemTagShip < ActiveRecord::Base
  belongs_to :question
  belongs_to :tag

  accepts_nested_attributes_for :tag

  attr_accessible :problem_id, :tag_id
end
