class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      t.text :body
      t.belongs_to :comment, index: true
      t.timestamps null: false
    end
  end
end
