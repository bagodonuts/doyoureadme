class Seminar < ActiveRecord::Base
  # associations
  has_many :reservations
  has_many :users, through: :reservations
  belongs_to :host, class_name: "User"

  validates_presence_of :title
  validates :starts_at, presence: true
  validates_presence_of :host
  validates_presence_of :capacity

end
