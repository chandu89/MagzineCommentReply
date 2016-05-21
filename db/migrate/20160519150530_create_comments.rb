class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :email
      t.string :name
      t.text :comment
      t.belongs_to :article, index: true

      t.timestamps null: false
    end
  end
end
