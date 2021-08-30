class AddOrbitIdToOrbs < ActiveRecord::Migration[6.1]
  def change
    add_column :orbs, :orbit_id, :string
  end

  def down
    change_table :orbs do |t|
      t.remove :orbit_id
    end
  end
end
