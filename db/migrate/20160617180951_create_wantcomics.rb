class CreateWantcomics < ActiveRecord::Migration
  def change
    create_table :wantcomics do |t|
      t.belongs_to :mastercomic, index: true, foreign_key: true
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
