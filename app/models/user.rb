class User < ActiveRecord::Base
  before_save :set_default_role
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  has_many :poke_users, dependent: :destroy
  has_many :pokemons, through: :poke_users

  enum role: [:guest, :logged, :admin]

  private
    def set_default_role
      self.role ||= 1
    end
end
