class User < ActiveRecord::Base
  has_many :box
  validates :user_id, presence: true
  validates :user_id, numericality: { only_integer: true }
  validates :user_id, uniqueness: true
end
