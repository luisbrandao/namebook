class AddTripulacaoAndTamanhoToShipSizes < ActiveRecord::Migration[6.1]
  def change
    add_column :ship_sizes, :tripulacao, :text, default: ""
    add_column :ship_sizes, :tamanho, :text, default: ""
  end
end
