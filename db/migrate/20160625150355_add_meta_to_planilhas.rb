class AddMetaToPlanilhas < ActiveRecord::Migration
  def change
    add_column :planilhas, :meta, :float
  end
end
