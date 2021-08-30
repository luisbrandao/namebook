class CreateFamiliesRacesJoinTable < ActiveRecord::Migration[6.1]
  def up
    create_table :families_races, :id => false do |t|
      t.references :family, :race
    end
  end

  def down
    drop_table :families_races
  end
end
