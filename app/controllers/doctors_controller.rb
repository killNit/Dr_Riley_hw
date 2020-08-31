class DoctorsController < ApplicationController
  before_action :set_doctor, only: [:show, :edit, :update, :destroy]
  
  def index
    @doctors = Doctor.all
  end

  def show
    # @doctor = Doctor.find(params[:id])
  end

  def new
    @doctor = Doctor.new
    render:_drform 
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
    # @doctor = Doctor.find(params[:id])
    render:_drform
  end

  def update
    # @doctor = Doctor.find(params[:id])
    if @doctor.update(doctor_params)
      redirect_to @doctor
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
  params.require(:doctor).permit(:name)
  end

  def set_doctor
    @doctor = Doctor.find(params[:id])
  end
end
