class Teacher < ApplicationRecord
  has_many :students, through: :subjects
  has_many :subjects
end
