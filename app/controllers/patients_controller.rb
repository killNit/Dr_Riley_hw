class PatientsController < ApplicationController
  before_action :set_patient, only: [:show, :edit, :delete, :update]
  #before_action :set_doctor, only: [:show, :edit, :update, :destroy]
  def index
    @patients = Patient.all
  end

  def show
  end

  def new
    @patients = Patient.new(patient_params)
    render:_patform
  end

  def create
    if @patient.save
    redirect_to @patient
    else 
    render :new
    end
  end

  def edit
    render:_patform
  end

  def update
    if @patient.update
    redirect_to @patient
    else
    render :edit
    end
  end

  private

  def set_patient
    @patient = Patient.find(params[:id])
  end

  def patient_params
  params(@patient).permit(:name)
  end
end


