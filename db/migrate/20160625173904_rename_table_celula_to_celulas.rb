class RenameTableCelulaToCelulas < ActiveRecord::Migration
  def change
    rename_table :celula, :celulas
  end
end
