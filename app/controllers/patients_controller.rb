class PatientsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  
  def index
    @patients = Patient.includes(:user)
  end

  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.new(patient_params)
    if @patient.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show 
    @patient = Patient.find(params[:id])
  end

  def edit
    @patient = Patient.find(params[:id])
  end

  def update
    @patient = Patient.find(params[:id])
    if @patient.update(patient_params)
      redirect_to patient_path
     else
     render :edit
     end
  end

  def destroy
    @patient = Patient.find(params[:id])
    if @patient.destroy 
      redirect_to root_path
    end
  end

  private 

  def patient_params
    params.require(:patient).permit(:name, :age, :sex_id, :height, :weight, :postal_code, :address, :family_living_together_id, :disease_name, :medical_history, :surgical_history, :infection, :comment).merge(user_id: current_user.id)
  end

end
