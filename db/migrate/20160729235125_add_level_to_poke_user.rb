class AddLevelToPokeUser < ActiveRecord::Migration
  def change
    add_column :poke_users, :level, :integer
  end
end
