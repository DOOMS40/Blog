class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  mount_uploader :image, ImageUploader
  has_many :user_images
  has_many :friendships
  has_many :searches
  has_many :comments

  validates :name, presence: true, length: { minimum: 3 }
  validates :patronymic, presence: true, length: { minimum: 3 }
  validates :surname, presence: true, length: { minimum: 3 }
  validates :username, presence: true, length: { minimum: 3 }
  validates :image, presence: true
end
