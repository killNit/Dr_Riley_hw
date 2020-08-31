class AppointmentsController < ApplicationController
  def index
    @patient = Patient.find.(params[:id])
    @appointment = @patient.appointment.where(@doctor.appointment[:id] == @patient.appointment(:id)).all 
    # @patient = @doctor.appointment.where(@doctor.appointment(:id) == @patient.appointment(:id))

  end

  def show
    @appointment = @patient.appointment.last(params[:id])
  end

  def new
    binding.pry
    @patient = Patient.find(params[:id])
     @doctor = Doctor.find(params[:id])
    #   render :_new_appointment
    # @appointment = @doctor.appointment.new 
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

  def destroy 
  @appointment = @patient.appointment.find(params[:id])
   @appointment.destroy
   redirect_to root
  end

  private
  def appointment_params
  params.require(:appointment).permit(:doctor.id, :patient.id, :date)
  end

end