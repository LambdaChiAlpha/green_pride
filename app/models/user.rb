class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :invitable,
         :recoverable, :rememberable, :trackable, :validatable

  scope :actives, -> { all }
  scope :in_house, -> { all }
end
