class AddOrbitIdToOrbs < ActiveRecord::Migration
  def change
    add_column :orbs, :orbit_id, :string
  end
end
