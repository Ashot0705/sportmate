class RenameAgeToBirthday < ActiveRecord::Migration[5.0]
  def change
  	rename_column :users, :age, :birthday
  end
end
