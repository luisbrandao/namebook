class CreateFamiliesRacesJoinTable < ActiveRecord::Migration
  def up
    create_table :families_races do |t|
      t.references :family, :race
    end
  end

  def down
    drop_table :families_races
  end
end
