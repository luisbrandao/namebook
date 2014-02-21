class AddSexoToNames < ActiveRecord::Migration
  def change
    add_column :names, :sexo, :integer, :default => 1
  end
end
