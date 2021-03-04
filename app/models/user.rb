class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :bots
  has_many :favorites

  devise :database_authenticatable, :rememberable

  devise :omniauthable, omniauth_providers: [:twitch]

  validates :email, presence: true
  validates :encrypted_password, presence: true
  validates :nickname, presence: true
  validates :image, presence: true
  validates :view_count, presence: true

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0, 20]
      user.nickname = auth.info.nickname
      user.image = auth.info.image
      user.view_count = auth.extra.raw_info.view_count
      user.uid = auth.uid
      user.provider = auth.provider
    end
  end
end
