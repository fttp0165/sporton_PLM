class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :name            
      t.date   :receive_date          #收件時間
      t.string :project_number        #案號
      t.string :customer              #客戶
      t.string :product_number        #產品型號
      t.string :product_name          #產品名稱
      t.string :salesman              #業務員
      t.string :PM                    #PM
      t.timestamps    
    end
  end
end
