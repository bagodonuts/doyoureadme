class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # data validations
  validates :name, presence: true, length: {maximum: 50}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true,
                    length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX }

  # associations
  has_many :reservations
  has_many :seminars, -> { order 'seminars.starts_at' },through: :reservations
  has_many :hosted_seminars, class_name: "Seminar"

  def reserved?(seminar)
    self.seminars.include? seminar
  end

  def host?(seminar)
    seminar.host.eql? self
  end
end
