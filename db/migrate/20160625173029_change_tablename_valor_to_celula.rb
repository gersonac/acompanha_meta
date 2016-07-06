class ChangeTablenameValorToCelula < ActiveRecord::Migration
  def change
    rename_table :valores, :celula
  end
end
