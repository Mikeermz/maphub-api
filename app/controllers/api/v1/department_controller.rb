class Api::V1::DepartmentController < ApplicationController
	skip_before_action :verify_authenticity_token

	def all_departments
	  department = Department.all

	  render json: department, :except => [:created_at, :updated_at]
	end

	def create_survey
		email = SurveyDepartment.find_by(email: params[:survey][:email])

	  if email.present?
	    render json: {errors: {message: 'The same email already exists.'}}, status: :accepted
	    return
	  end

	  SurveyDepartment.transaction do
	    survey = SurveyDepartment.create! quote_id: params[:survey][:quote],
	                                department_id: params[:survey][:department],
	                                email: params[:survey][:email],
	                                sex: params[:survey][:sex]
	  	render json: survey,
	  		:include => [{:department => {:only => :department_name}}, {:quote => {:only => :qoute_name}}],
	  		:except => [:created_at, :updated_at, :quote_id, :department_id]
	  end
	end

	def survey_general_to_departments

	end
end
