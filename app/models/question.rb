class Question < ActiveRecord::Base
  has_many :answers
  validates :question, length: { minimum: 40 }
  validates :description, length: { minimum: 150 }
end
