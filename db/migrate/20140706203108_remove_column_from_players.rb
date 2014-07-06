class RemoveColumnFromPlayers < ActiveRecord::Migration
  def change
  	#remove_column :table_name, :column_name
  	remove_column :players, :team_id
  end
end
