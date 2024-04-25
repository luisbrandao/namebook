class ChangeAparenciaTypeInNames < ActiveRecord::Migration[6.1]
  def change
    change_column :names, :aparencia, :text
  end
end
