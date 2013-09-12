class CreateOrbTypes < ActiveRecord::Migration
  def change
    create_table :orb_types do |t|
      t.string :nome

      t.timestamps
    end
  end
end
