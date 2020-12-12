class AddApiIdToTeam < ActiveRecord::Migration[5.1]
  def change
    add_column :teams, :apiId, :integer
  end
end
