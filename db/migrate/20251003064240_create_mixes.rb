class CreateMixes < ActiveRecord::Migration[7.1]
  def change
    create_table :mixes do |t|
      t.references :student, null: false, foreign_key: true
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
