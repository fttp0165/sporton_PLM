class Project < ApplicationRecord
  validates :receive_date, presence: true #收件時間
  validates :project_number, presence: true #案號
  #validates :customer, presence: true #客戶
  validates :product_number, presence: true #產品型號   
  #validates :product_name, presence: true #產品名稱     
  #validates :salesman, presence: true #業務   
  validates :PM, presence: true #負責PM    
  has_many :test_modes
  belongs_to :user
  has_many :comments, as: :commentable
end
