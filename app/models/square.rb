class Square < ActiveRecord::Base
  validates :length, presence: true
  validates :width, presence: true
  validates :color, presence: true
end
