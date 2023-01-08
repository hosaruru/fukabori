class Content < ApplicationRecord
  has_many :text
  has_many :pictures
  accepts_nested_attributes_for :pictures
  belongs_to :user
end
