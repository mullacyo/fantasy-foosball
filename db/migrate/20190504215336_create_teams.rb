class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.string :name
      t.integer :games
      t.integer :wins
      t.timestamps
    end
    add_reference :teams, :player1, index:true
    add_reference :teams, :player2, index:true
  end
end