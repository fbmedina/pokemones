class PokeUser < ActiveRecord::Base
  belongs_to :pokemon
  belongs_to :user

  before_save :set_default_lvl

  def set_default_lvl
    self.level = level || 5
  end


end
