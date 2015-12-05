class User < ActiveRecord::Base
  before_save { self.email = email.downcase }
  validates :name, presence: true, length: { maximum: 50 }
  validates :screen_name, presence: true, length: { maximum: 50 }, on: :update
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :region, presence: true, length: { maximum: 20 }, on: :update
  validates :phone_number, presence: true, format: { with: /\A\+?\d[-\d\s]+\Z/, message: "Use only digits and dashes for phone number" }, length: {maximum: 20}, on: :update
  has_secure_password
end