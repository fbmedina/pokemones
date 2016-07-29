class CreatePokeUsers < ActiveRecord::Migration
  def change
    create_table :poke_users do |t|
      t.references :pokemon, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
