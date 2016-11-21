class Job < ApplicationRecord
  validates :username, presence: true
  validates :place, presence: true
  validates :message, presence: true
  validates :priority, presence: true
  validates :assign_by, presence: true



end
