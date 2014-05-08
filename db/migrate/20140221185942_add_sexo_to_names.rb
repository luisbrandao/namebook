class AddSexoToNames < ActiveRecord::Migration
  def change
    add_column :names, :sexo, :integer, :default => 1
  end
  
  def down
    change_table :names do |t|
      t.remove :sexo
    end
  end
end
