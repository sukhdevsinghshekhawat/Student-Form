class AddAgeToStudent < ActiveRecord::Migration[7.1]
  def change
    add_column :students, :age, :integer
  end
end
