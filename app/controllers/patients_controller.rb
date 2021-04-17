class PatientsController < ApplicationController
  
  def index
    @patients = Patient.includes(:user).order(created_at: :desc) 
  end

  def new
    @Patient = Patient.new
  end

  def create
    @patient = Patient.new(patient_params)
    if @patient.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
  end

  private 

  def patient_params
    params.permit(:name, :age, :sex_id, :height, :weight, :postal_code, :address, :family_living_together_id, :disease_name, :medical_history, :surgical_history, :infection, :comment).merge(user_id: current_user.id)
  end

end
