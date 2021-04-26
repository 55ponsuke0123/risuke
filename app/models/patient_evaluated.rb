class PatientEvaluated
  include ActiveModel::Model
  attr_accessor :turn_over_id, 
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
  :total_2_id,
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
  :generalization,
  :user_id,
  :patient_id,
  :evaluated_patient_id

  def save
    evaluated_patient = EvaluatedPatient.create(user_id: user_id, patient_id: patient_id)
    PatientDetail.create(turn_over: turn_over, get_up: get_up, sitting_position: sitting_position, stand_up: stand_up,standing: standing,transfer: transfer,wheelchair_operation: wheelchair_operation,walking: walking, stairs: stairs, meal_1: meal_1, shape_1: shape_1,
      balneum_1: balneum_1,
      outer_wear: outer_wear,
      under_wear: under_wear,
      toilet_1: toilet_1,
      urination_1: urination_1,
      defecation_1: defecation_1,
      bed_transfer_1: bed_transfer_1,
      toilet_transfer_1: toilet_transfer_1,
      bathtub_transfer_1: bathtub_transfer_1,
      walking_1: walking_1,
      stair_1: stair_1,
      understanding_1: understanding_1,
      expression_1: expression_1,
      alternating_current_1: alternating_current_1,
      solving_1: solving_1,
      memory_1: memory_1,
      total_1: total_1,
      meal_2: meal_2,
      transfer_2: transfer_2,
      shape_2: shape_2,
      toilet_2: toilet_2,
      balneum_2: balneum_2,
      walking_2: walking_2,
      stair_2: stair_2,
      changing_clothes: changing_clothes,
      urination_2: urination_2,
      defecation_2: defecation_2,
      total_2: total_2,
      relationship_sole: relationship_sole,
      left_right_difference: left_right_difference,
      alignment: alignment,
      alignment_comment: alignment_comment,
      postural_tension: postural_tension,
      impact: impact,
      speed: speed,
      stride: stride,
      durability: durability,
      walking_pattern: walking_pattern,
      foot_position: foot_position,
      upset: upset,
      redundancy: redundancy,
      applicability: applicability,
      gait: gait,
      dementia_degree: dementia_degree,
      impact_daily_life: impact_daily_life,
      pain_area: pain_area,
      appearance_time: appearance_time,
      degree_of_pain: degree_of_pain,
      factor_tissue: factor_tissue,
      rom_part_degree: rom_part_degree,
      joint_capsule: joint_capsule,
      soft_tissue: soft_tissue,
      muscle_weakness: muscle_weakness,
      muscle_weakness_factor: muscle_weakness_factor,
      sense_cooperation: sense_cooperation,
      sense_cooperation_impact: sense_cooperation_impact,
      paresthesia: paresthesia,
      paresthesia_impact: paresthesia_impact,
      others: others,
      generalization: generalization,
      evaluated_patient_id: evaluated_patient.id)
   end

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :turn_over
  belongs_to :get_up
  belongs_to :sitting_position
  belongs_to :stand_up
  belongs_to :standing
  belongs_to :transfer
  belongs_to :wheelchair_operation
  belongs_to :walking
  belongs_to :stairs
  belongs_to :meal_1
  belongs_to :shape_1
  belongs_to :balneum_1
  belongs_to :outer_wear
  belongs_to :under_wear
  belongs_to :toilet_1
  belongs_to :urination_1
  belongs_to :defecation_1
  belongs_to :bed_transfer_1
  belongs_to :toilet_transfer_1
  belongs_to :bathtub_transfer_1
  belongs_to :walking_1
  belongs_to :stair_1
  belongs_to :understanding_1
  belongs_to :expression_1
  belongs_to :alternating_current_1
  belongs_to :solving_1
  belongs_to :memory_1
  belongs_to :meal_2
  belongs_to :transfer_2
  belongs_to :shape_2
  belongs_to :toilet_2
  belongs_to :balneum_2
  belongs_to :walking_2
  belongs_to :stair_2
  belongs_to :changing_clothes
  belongs_to :urination_2
  belongs_to :defecation_2
end


      
      