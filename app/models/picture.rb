class Picture < ApplicationRecord
  belongs_to :content
  has_many :texts
  accepts_nested_attributes_for :texts
  belongs_to :user
end
