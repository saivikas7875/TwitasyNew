class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.string :tweetscore
      t.string :hashtagscore
      t.string :totalscore

      t.timestamps
    end
  end
end
