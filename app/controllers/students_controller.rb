class StudentsController < ApplicationController

  def index
    # byebug
    students = if params[:name]
      Student.find_by(first_name: params[:name]) || Student.find_by(last_name: params[:name])
    else
      Student.all
    end
    render json: students

    # student = Student.find_by(last_name: params[:last_name])

    # render json: student

    # {first_name: PARAM, last_name: PARAM}
  end

  def show 
    student = Student.find(params[:id])
    render json: student
  end

end
