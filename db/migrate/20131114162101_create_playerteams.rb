class CreatePlayerteams < ActiveRecord::Migration
  def change
    create_table :playerteams do |t|

      t.timestamps
    end
  end
end
