class Answer < ActiveRecord::Base
  attr_accessible :description, :user_id
  belongs_to :user
  belongs_to :problem
end
