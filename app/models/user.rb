class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :cars
  has_many :events
  has_many :participations
  has_many :participated_events, through: :participations, class_name: 'Event', foreign_key: :event_id
  has_many :chatrooms, through: :messages
end
