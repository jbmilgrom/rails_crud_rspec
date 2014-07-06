class CreateContractsTable < ActiveRecord::Migration
  def change
    create_table :contracts do |t|
      t.integer :team_id
      t.integer :player_id
      t.integer :term
      t.integer :deal_value
    end
  end
end
