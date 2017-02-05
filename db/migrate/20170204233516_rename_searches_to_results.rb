class RenameSearchesToResults < ActiveRecord::Migration[5.0]
  def change
    rename_table :searches, :results
  end
end
