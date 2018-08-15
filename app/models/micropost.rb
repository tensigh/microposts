class Micropost < ActiveRecord::Base
  belongs_to :user
    validates :user_id, presence: true
    validates :content, presence: true, length: { maximum: 140 }
    validates :storename, presence: true
    validates :productname, presence: true
    validates :rating, presence: true
end
