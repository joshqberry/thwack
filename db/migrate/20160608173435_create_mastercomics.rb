class CreateMastercomics < ActiveRecord::Migration
  def change
    create_table :mastercomics do |t|
      t.string :title
      t.integer :issuenumber
      t.string :publisher
      t.string :category
      t.string :specialID
      t.string :imagesource

      t.timestamps null: false
    end
  end
end
