class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :cars, dependent: :destroy
  has_many :events, dependent: :destroy
  has_many :participations, dependent: :destroy
  has_many :participated_events, through: :participations, class_name: 'Event', foreign_key: :event_id
  # has_many :events, through: :messages
  has_many :messages, dependent: :destroy
  has_one_attached :photo
end
