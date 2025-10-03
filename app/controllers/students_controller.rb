class StudentsController < ApplicationController
  def new
    @student = Student.new
  end

  def create
    @student = Student.new(params_require)
    if @student.save
      redirect_to @student 
    else
      render 'new'
    end 
  end

  def destroy
    @student = Student.find(params[:id])
    @student.delete
  end

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(params_require)
    if @student.save
      redirect_to @student
    else
      render 'new'
    end
  end


  private
  def params_require
    params.require(:student).permit(:name, :email)
  end 
end

