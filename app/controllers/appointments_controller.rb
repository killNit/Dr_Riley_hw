class AppointmentsController < ApplicationController
  def index
    @doctors = @patient.appointment.all 
    @patient = @doctor.appointment.all
  end

  def show
    @appointment = @patient.appointment.last(params[:id])
  end

  def new
    @appointment = @patient.appointment.new
  end

  def create 
    @appointment = @appointment.new(appointment_params)
    if @appointment.save
      redirect_to @appointment
    else 
      render :new
    end
  end

  def edit
    @appointment = @patient.appointment.find(params[:id])
  end

  def destroy @appointment = @patient.appointment.find(params[:id])
   @appointment.destroy
   redirect_to root
  end

private
def appointment_params
  params.require(:appointment).permit(:doctor.id, :patient.id)
end