class CreateTable < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.string :name
    end
    create_table :player_cards do |t|
      t.integer :team_id
      t.integer :player_id
    end
    create_table :players do |t|
    t.string :name
    t.string :player_number
    t.string :player_status
    t.string :birth_date
    t.string :height
    t.string :weight
    t.string :college

end
  end
end
