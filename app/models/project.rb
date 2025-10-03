class Project < ApplicationRecord
  has_many :mix
  has_many :students, through: :mix
end
