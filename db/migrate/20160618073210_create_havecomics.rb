class CreateHavecomics < ActiveRecord::Migration
  def change
    create_table :havecomics do |t|
      t.belongs_to :mastercomic, index: true, foreign_key: true
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
