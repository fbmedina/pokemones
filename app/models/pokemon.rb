class Pokemon < ActiveRecord::Base
  has_many :poke_users, dependent: :destroy
  has_many :users, through: :poke_users
end
