class CreatePlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :players do |t|
      t.integer :team_id
      t.string :name
      t.string :player_number
      t.string :player_position
      t.string :player_status
      t.string :birth_date
      t.string :height
      t.string :weight
      t.string :college
    end
  end
end
