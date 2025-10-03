class Student < ApplicationRecord
	validates :name, presence: true, length: {minimum: 4, maximum: 20}
	validates :email, presence: true
	has_many :mix
	has_many :projects, through: :mix
end
