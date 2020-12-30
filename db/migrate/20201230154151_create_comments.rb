class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.belongs_to :project
      t.belongs_to :test_mode
      t.belongs_to :test_item
      t.belongs_to :user
      t.string     :content
      t.timestamps
    end
  end
end
