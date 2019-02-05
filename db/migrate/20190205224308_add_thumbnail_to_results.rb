class AddThumbnailToResults < ActiveRecord::Migration[5.0]
  def change
    add_column :results, :link, :string
    add_column :results, :thumbnail, :string
  end
end
