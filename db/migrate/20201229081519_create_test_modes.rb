class CreateTestModes < ActiveRecord::Migration[6.0]
  def change
    create_table :test_modes do |t|
      t.belongs_to :project, null: false, foreign_key: true
      t.string     :law_name
      t.date       :expected_date_of_delivery
      t.date       :finish_date
      t.date       :trf
      t.timestamps
    end
  end
end
