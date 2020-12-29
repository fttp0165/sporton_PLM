class CreateTestItems < ActiveRecord::Migration[6.0]
  def change
    create_table :test_items do |t|
      t.belongs_to :test_mode, null: false, foreign_key: true
      t.string     :test_name
      t.date       :expected_date_of_delivery
      t.string     :status
      t.timestamps
    end
  end
end
