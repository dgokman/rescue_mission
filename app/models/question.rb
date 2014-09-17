class Question < ActiveRecord::Base
  validates :question, length: { minimum: 40 }
  validates :description, length: { minimum: 150 }
end
