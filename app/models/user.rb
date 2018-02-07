class User < ApplicationRecord
  has_many :main_goals
  has_many :goal_steps, through: :main_goals
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
