class AddNameAnaboutTitleinUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :name, :string
    add_column :users, :title, :string 
    add_column :users, :Authority, :string 
  end
end
