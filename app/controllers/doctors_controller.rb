class DoctorsController < ApplicationController

  before_action :set_doctor, only: [show, edit, update, destroy]
  
  def index
    @doctor = Doctor.all
  end

  def show
    
  end

  def new
    @doctor = Doctor.new
  end

  def create
  @doctor = Doctor.new(doctor_params)
    if @doctor.save
    redirect_to @doctor
    else
    render :new 
    end
  end

  def edit
   
  end

  def update
    if @doctor.update(doctor_params)
      redirect_to doctors_path
    else
      render :edit 
    end
  end

  def destroy
    @doctor.destroy
      redirect_to doctors_path
  end

  private

  def doctor_params
  params.require(:doctor).permit(name)
  end

  def set_doctor
    @doctor = Doctor.find(params[:id])
  end
end
