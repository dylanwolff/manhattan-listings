class AddFieldsToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :bedrooms, :integer
    add_column :posts, :bathrooms, :decimal
    add_column :posts, :sqft, :integer
  end
end
