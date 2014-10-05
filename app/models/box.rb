class Box < ActiveRecord::Base
  belongs_to :user
  has_many :item
  validates :box_id, presence: true
  validates :box_id, numericality: { only_integer: true }
  validates :box_id, uniqueness: true
  validates :name, length: {maximum: 30, minimum: 5}
  validates_format_of :name, :with => /[A-Za-z]/
  validates :user_id, presence: true
  validates :user_id, numericality: { only_integer: true }
  validates :total_value, numericality: {only_float: true}
end
