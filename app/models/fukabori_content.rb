class FukaboriContent < ApplicationRecord
  has_many :fukabori_text
  belongs_to :user
end
