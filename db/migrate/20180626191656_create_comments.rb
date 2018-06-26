class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :author
      t.integer :parent_id
      t.text :body

      t.timestamps
    end
  end
end
