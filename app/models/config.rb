class Config < ApplicationRecord
  belongs_to :bot
  has_many :favorites, dependent: :destroy

  validates :name, presence: true
  validates :content, presence: true
end
