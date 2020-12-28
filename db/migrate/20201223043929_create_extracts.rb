class CreateExtracts < ActiveRecord::Migration[6.1]
  def change
    create_table :extracts do |t|
      t.string :movimentacao
      t.boolean :tipo
      t.float :valor
      

      t.timestamps
    end
  end
end
