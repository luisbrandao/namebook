class AddAparenciaToNames < ActiveRecord::Migration[6.1]
  def change
    add_column :names, :aparencia, :string
  end

  def down
    change_table :names do |t|
      t.remove :aparencia
    end
  end
end
