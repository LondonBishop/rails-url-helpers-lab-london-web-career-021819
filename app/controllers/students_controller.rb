class StudentsController < ApplicationController

  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
  end

  def activation
    @student = Student.find(params[:id])
    @student.active ? @student.active = false : @student.active = true
    @student.save

    redirect_to student_path(@student)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end

end
