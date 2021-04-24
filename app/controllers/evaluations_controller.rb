class EvaluationsController < ApplicationController
  before_action :authenticate_user!, only: [:index, :create]

  def new
    @patient = Patient.find(params[:patient_id])
    @patient_evaluated = PatientEvaluated.new
  end

  def create
    @patient = Patient.find(params[:patient_id])
    @patient_evaluated = PatientEvaluated.new(evaluated_params)
    if @patient_evaluated.save
       return redirect_to root_path
    else
      render :index
    end
  end



  
  private
  

  def evaluated_params
    params.require(:patient_evaluated).permit(
  :turn_over,     
  :get_up, 
  :sitting_position, 
  :stand_up, 
  :standing,
  :transfer, 
  :wheelchair_operation, 
  :walking, 
  :stairs,
  :meal_1,
  :shape_1,
  :balneum_1,
  :outer_wear,
  :under_wear,
  :toilet_1,
  :urination_1,
  :defecation_1,
  :bed_transfer_1,
  :toilet_transfer_1,
  :bathtub_transfer_1,
  :walking_1,
  :stair_1,
  :understanding_1,
  :expression_1,
  :alternating_current_1,
  :solving_1,
  :memory_1,
  :total_1,
  :meal_2,
  :transfer_2,
  :shape_2,
  :toilet_2,
  :balneum_2,
  :walking_2,
  :stair_2,
  :changing_clothes,
  :urination_2,
  :defecation_2,
  :total_2,
  :relationship_sole,
  :left_right_difference,
  :alignment,
  :alignment_comment,
  :postural_tension,
  :impact,
  :speed,
  :stride,
  :durability,
  :walking_pattern,
  :foot_position,
  :upset,
  :redundancy,
  :applicability,
  :gait,
  :dementia_degree,
  :impact_daily_life,
  :pain_area,
  :appearance_time,
  :degree_of_pain,
  :factor_tissue,
  :rom_part_degree,
  :joint_capsule,
  :soft_tissue,
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
