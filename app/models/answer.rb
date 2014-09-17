class Answer < ActiveRecord::Base
  validates :answer, length: { minimum: 50 }
end
