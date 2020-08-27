class AddHaveListToUsers < ActiveRecord::Migration
  def change
    add_column :users, :havelist, :string, array: true, default: []
    add_column :users, :wantlist, :string, array: true, default: []

  end
end
