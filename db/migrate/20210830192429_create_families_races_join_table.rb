class CreateFamiliesRacesJoinTable < ActiveRecord::Migration[6.1]
  def change
    create_join_table :families, :races do |t|
      # t.index [:family_id, :race_id]
      # t.index [:race_id, :family_id]
    end
  end
end
