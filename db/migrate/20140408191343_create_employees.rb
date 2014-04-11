class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.references :company, index: true
      t.string :last_name
      t.string :first_name
      t.string :phone_number

      t.timestamps
    end
  end
end
