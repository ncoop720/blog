class AddParentTypeToComment < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :parent_type, :string
  end
end
