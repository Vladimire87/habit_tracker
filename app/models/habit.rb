class Habit < ApplicationRecord
  belongs_to :user
  has_many :progresses, dependent: :destroy
end
