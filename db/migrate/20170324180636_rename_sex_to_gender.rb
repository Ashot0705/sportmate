class RenameSexToGender < ActiveRecord::Migration[5.0]
  def change
  	remove_column :users, :sex
  	add_column :users, :gender, :string
  end
end
