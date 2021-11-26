class EvaluationsController < ApplicationController
  before_action :authenticate_user!, only: [:index, :create]

  def new
    @patient_evaluated = PatientEvaluated.new
  end

  def create
    @patient = Patient.find(params[:patient_id])
    @patient_evaluated = PatientEvaluated.new(evaluated_params)
    if @patient_evaluated.save
       return redirect_to root_path
    else
      render :new
    end
  end

  

  def edit
    @patient = Patient.find(params[:patient_id])
    @patient_evaluated = PatientEvaluated.new(patient: @patient)
  end

  def update
    @patient = current_user.patients.find(params[:id])
    @patient_evaluated = PatientEvaluated.new(evaluated_params,patient: @patient)
     if @patient_evaluated.save
      redirect_to @patient
     else
      render edit
     end
  end




  
  private
  

  def evaluated_params
    params.require(:patient).permit(
      :turn_over_id, 
      :moving_on_bed_id,
      :get_up_id, 
      :sitting_position_id, 
      :stand_up_id, 
      :standing_id,
      :transfer_id, 
      :wheelchair_operation_id, 
      :walking_id, 
      :stairs_id,
      :meal_1_id,
      :shape_1_id,
      :balneum_1_id,
      :outer_wear_id,
      :under_wear_id,
      :toilet_1_id,
      :urination_1_id,
      :defecation_1_id,
      :bed_transfer_1_id,
      :toilet_transfer_1_id,
      :bathtub_transfer_1_id,
      :walking_1_id,
      :stair_1_id,
      :understanding_1_id,
      :expression_1_id,
      :alternating_current_1_id,
      :solving_1_id,
      :memory_1_id,
      :total_1,
      :meal_2_id,
      :transfer_2_id,
      :shape_2_id,
      :toilet_2_id,
      :balneum_2_id,
      :walking_2_id,
      :stair_2_id,
      :changing_clothes_id,
      :urination_2_id,
      :defecation_2_id,
      :total_2,
      :relationship_sole_id,
      :left_right_difference_id,
      :alignment_id,
      :alignment_comment,
      :postural_tension_id,
      :impact_id,
      :speed,
      :stride,
      :durability,
      :walking_pattern,
      :foot_position,
      :upset_id,
      :redundancy_id,
      :applicability_id,
      :gait_id,
      :dementia_degree,
      :impact_daily_life,
      :pain_area,
      :appearance_time,
      :degree_of_pain,
      :factor_tissue_id,
      :rom_part_degree,
      :joint_capsule_id,
      :soft_tissue_id,
      :muscle_weakness,
      :muscle_weakness_factor,
      :sense_cooperation,
      :sense_cooperation_impact,
      :paresthesia,
      :paresthesia_impact,
      :others,
      :generalization).merge(evaluated_patient_id: params[:evaluated_patient_id], patient_id: params[:patient_id], user_id: current_user.id)
  end

  
end
