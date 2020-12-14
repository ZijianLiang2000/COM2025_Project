class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :teams do |t|
      t.string :teamName, null: false
      t.integer :apiId
      t.timestamps
    end
  end
end
