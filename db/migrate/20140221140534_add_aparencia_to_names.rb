class AddAparenciaToNames < ActiveRecord::Migration
  def change
    add_column :names, :aparencia, :string
  end
end
