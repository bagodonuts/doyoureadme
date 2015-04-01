class Reservation < ActiveRecord::Base
  belongs_to :user
  belongs_to :seminar

  validates :user_id, uniqueness: { scope: :seminar_id }, presence: true
  validates :seminar, presence: true
end
