class AddPlayersToTeam < ActiveRecord::Migration
  def change
    add_column :teams, :player1, :string
    add_column :teams, :player2, :string
    add_column :teams, :player3, :string
    add_column :teams, :player4, :string
  end
end
