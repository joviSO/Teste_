class AddContaIdToExtract < ActiveRecord::Migration[6.1]
  def change
    add_reference :extracts, :contum, foreign_key: true, null: false
  end
end
