class AddYearToPlanilha < ActiveRecord::Migration
  def change
    add_column :planilhas, :year, :integer
  end
end
