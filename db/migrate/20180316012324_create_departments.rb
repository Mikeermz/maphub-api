class CreateDepartments < ActiveRecord::Migration[5.1]
  def change
    create_table :departments do |t|
    	t.string :department_name, null: false

      t.timestamps
    end
    add_index :departments, :department_name, unique: true
  end
end
