class ChangeOrbitIdInOrbs < ActiveRecord::Migration
  def change
    change_column :orbs, :orbit_id, :integer
  end
end
