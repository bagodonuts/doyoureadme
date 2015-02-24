class Seminar < ActiveRecord::Base
  # associations
  has_many :reservations
  has_many :users, through: :reservations
end
