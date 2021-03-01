class Bot < ApplicationRecord
  belongs_to :user
  has_many :configs, dependent: :destroy

  validates :name, presence: true
  validates :photo, presence: true
end
