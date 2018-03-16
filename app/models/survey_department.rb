class SurveyDepartment < ApplicationRecord
  belongs_to :quote
  belongs_to :department

  enum sex: [:masculine, :feminine, :undefined]
end