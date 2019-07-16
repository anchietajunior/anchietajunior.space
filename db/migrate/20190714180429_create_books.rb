class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :progress
      t.string :start
      t.text :comment

      t.timestamps
    end
  end
end
