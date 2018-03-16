class CreateSurveyDepartments < ActiveRecord::Migration[5.1]
  def change
    create_table :survey_departments do |t|
    	t.belongs_to :quote, index: true, null: false
    	t.belongs_to :department, index: true, null: false
    	t.string :email, null: false
    	t.integer :sex, null: false

      t.timestamps
    end
  	add_index :survey_departments, :email, unique: true
  end
end


