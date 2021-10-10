class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author_name
      t.integer :subject_code
      t.string :image

      t.timestamps
    end
  end
end
