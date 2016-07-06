class CreateValores < ActiveRecord::Migration
  def change
    create_table :valores do |t|
      t.integer :year, null: false
      t.integer :month, null: false
      t.integer :day, null: false
      t.float :value, null: false
      t.references :planilha, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
