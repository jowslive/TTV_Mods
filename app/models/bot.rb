class Bot < ApplicationRecord
  belongs_to :user
  has_many :configs, dependent: :destroy
  has_rich_text :rich_introduction

  validates :name, presence: true
  validates :rich_introduction, presence: true
  validates :photo, presence: true
end
