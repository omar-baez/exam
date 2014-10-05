class Item < ActiveRecord::Base
  belongs_to :box
  validates :item_id, presence: true
  validates :item_id, numericality: { only_integer: true }
  validates :item_id, uniqueness: true
  validates :box_id, presence: true
  validates :box_id, numericality: { only_integer: true }
  validates :name, presence: true
  validates_format_of :name, :with => /[A-Za-z]/
  validates :name, length: {maximum: 30, minimum: 5}
  validates :value, numericality: {only_float: true}
end
