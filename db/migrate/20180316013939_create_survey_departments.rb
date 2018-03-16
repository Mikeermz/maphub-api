class CreateSurveyDepartments < ActiveRecord::Migration[5.1]
  def change
    create_table :survey_departments do |t|
    	t.belongs_to :quote, index: true
    	t.belongs_to :department, index: true
    	t.string :email
    	t.integer :sex

      t.timestamps
    end
  end
end
