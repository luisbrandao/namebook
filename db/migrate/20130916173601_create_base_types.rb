class CreateBaseTypes < ActiveRecord::Migration
  def change
    create_table :base_types do |t|
      t.string :nome

      t.timestamps
    end
  end
end
