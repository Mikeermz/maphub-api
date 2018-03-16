class Api::V1::DepartmentController < ApplicationController
	def all_departments
	  department = Department.all

	  render json: department.as_json()
	end
end
