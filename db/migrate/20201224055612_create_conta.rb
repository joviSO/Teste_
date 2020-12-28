class CreateConta < ActiveRecord::Migration[6.1]
  def change
    create_table :conta do |t|
      t.string :nomeDaConta
      t.integer :userId

      t.timestamps
    end
  end
end
