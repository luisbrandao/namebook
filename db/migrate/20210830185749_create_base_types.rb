class CreateBaseTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :base_types do |t|
      t.string :nome, null: false

      t.timestamps
    end
  end
end
