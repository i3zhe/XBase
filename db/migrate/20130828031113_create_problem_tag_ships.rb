class CreateProblemTagShips < ActiveRecord::Migration
  def change
    create_table :problem_tag_ships do |t|
      t.integer :problem_id
      t.integer :tag_id

      t.timestamps
    end
  end
end
