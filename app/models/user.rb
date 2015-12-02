class User < ActiveRecord::Base
  before_save { self.email = email.downcase }
  validates :name, presence: true, length: { maximum: 50 }
  validates :screen_name, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :region, presence: true, length: { maximum: 20 }
  validates :phone_number, presence: true, format: { with: /\d{3,4}-\d{4}-\d{4}/, message: "bad format" }, length: {maximum: 20}
  has_secure_password
end