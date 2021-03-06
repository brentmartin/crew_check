class Participation < ActiveRecord::Base
  has_many :evaluations
  has_many :questions, through: :evaluations

  accepts_nested_attributes_for :evaluations

  belongs_to :user
  belongs_to :survey
end
