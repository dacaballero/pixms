class UsersAddFields < ActiveRecord::Migration
  def up
  	add_column :users, :name, :string
  	add_column :users, :last_name, :string
  	add_column :users, :birthdate, :date
  end

  def down
  end
end
