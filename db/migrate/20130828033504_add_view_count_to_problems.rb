class AddViewCountToProblems < ActiveRecord::Migration
  def change
    add_column :problems, :view_count, :integer
  end
end
