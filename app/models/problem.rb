class Problem < ActiveRecord::Base
  belongs_to :user
  has_many :answers, :dependent => :destroy
  has_many :problem_tag_ships
  has_many :tags, :through => :problem_tag_ships, :foreign_key => :tag_id

  accepts_nested_attributes_for :answers, reject_if: :reject_answers, :allow_destroy => true
  # accepts_nested_attributes_for :problem_tag_ships
  accepts_nested_attributes_for :tags, reject_if: :reject_tags, :allow_destroy => true

  attr_accessor :tag_names
  attr_accessible :description, :name, :user_id, :answers_attributes, :tags_attributes


  validates :name, :description, :presence => true

  scope :latest, order('created_at desc').limit(8)
  scope :hot, order('view_count desc').limit(8)

  def reject_answers(attributed)
    attributed['description'].blank?
  end

  def reject_tags(attributed)
    attributed['name'].blank?
  end
end
