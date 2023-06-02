class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, :last_name, :age, :is_doctor, presence: true
  has_many :user_one_consultations, class_name: 'Consultation', foreign_key: 'user_one_id'
  has_many :user_two_consultations, class_name: 'Consultation', foreign_key: 'user_two_id'
end
# has_many :user_one_matches, class_name: 'Match', foreign_key: 'user_one_id'
#   has_many :user_two_matches, class_name: 'Match', foreign_key: 'user_two_id'
