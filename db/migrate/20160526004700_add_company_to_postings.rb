class AddCompanyToPostings < ActiveRecord::Migration
  def change
  	add_column :postings, :company, :string
  end
end
