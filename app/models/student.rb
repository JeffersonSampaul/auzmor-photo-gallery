class Student < ApplicationRecord
  has_many :teachers, through: :subjects
  has_many :subjects
end
