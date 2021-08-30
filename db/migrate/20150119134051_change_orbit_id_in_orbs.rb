class ChangeOrbitIdInOrbs < ActiveRecord::Migration[6.1]
  def change
    change_column :orbs, :orbit_id, :integer
  end
end
