class PatientEvaluated
  include ActiveModel::Model
  attr_accessor :turn_over_id, 
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
  :generalization,
  :user_id,
  :patient_id,
  :evaluated_patient_id

  delegate :persisted?, to: :patient
  
  def initialize(attributes = nil, patient: Patient.new)
    @patient = patient
    attributes ||= default_attributes
    super(attributes)
  end

  def save
    return if invalid?

    ActiveRecord::Base.transaction do

    patient_detail.update(turn_over_id: turn_over_id, moving_on_bed_id: moving_on_bed_id, get_up_id: get_up_id, sitting_position_id: sitting_position_id, stand_up_id: stand_up_id,standing_id: standing_id,transfer_id: transfer_id,wheelchair_operation_id: wheelchair_operation_id,walking_id: walking_id, stairs_id: stairs_id, meal_1_id: meal_1_id, shape_1_id: shape_1_id,
      balneum_1_id: balneum_1_id,
      outer_wear_id: outer_wear_id,
      under_wear_id: under_wear_id,
      toilet_1_id: toilet_1_id,
      urination_1_id: urination_1_id,
      defecation_1_id: defecation_1_id,
      bed_transfer_1_id: bed_transfer_1_id,
      toilet_transfer_1_id: toilet_transfer_1_id,
      bathtub_transfer_1_id: bathtub_transfer_1_id,
      walking_1_id: walking_1_id,
      stair_1_id: stair_1_id,
      understanding_1_id: understanding_1_id,
      expression_1_id: expression_1_id,
      alternating_current_1_id: alternating_current_1_id,
      solving_1_id: solving_1_id,
      memory_1_id: memory_1_id,
      total_1: total_1,
      meal_2_id: meal_2_id,
      transfer_2_id: transfer_2_id,
      shape_2_id: shape_2_id,
      toilet_2_id: toilet_2_id,
      balneum_2_id: balneum_2_id,
      walking_2_id: walking_2_id,
      stair_2_id: stair_2_id,
      changing_clothes_id: changing_clothes_id,
      urination_2_id: urination_2_id,
      defecation_2_id: defecation_2_id,
      total_2: total_2,
      relationship_sole_id: relationship_sole_id,
      left_right_difference_id: left_right_difference_id,
      alignment_id: alignment_id,
      alignment_comment: alignment_comment,
      postural_tension_id: postural_tension_id,
      impact_id: impact_id,
      speed: speed,
      stride: stride,
      durability: durability,
      walking_pattern: walking_pattern,
      foot_position: foot_position,
      upset_id: upset_id,
      redundancy_id: redundancy_id,
      applicability_id: applicability_id,
      gait_id: gait_id,
      dementia_degree: dementia_degree,
      impact_daily_life: impact_daily_life,
      pain_area: pain_area,
      appearance_time: appearance_time,
      degree_of_pain: degree_of_pain,
      factor_tissue_id: factor_tissue_id,
      rom_part_degree: rom_part_degree,
      joint_capsule_id: joint_capsule_id,
      soft_tissue_id: soft_tissue_id,
      muscle_weakness: muscle_weakness,
      muscle_weakness_factor: muscle_weakness_factor,
      sense_cooperation: sense_cooperation,
      sense_cooperation_impact: sense_cooperation_impact,
      paresthesia: paresthesia,
      paresthesia_impact: paresthesia_impact,
      others: others,
      generalization: generalization
    )
   end
  rescue ActiveRecord::RecordInvalid
    false
  end

  def to_model
    @patient_evaluated
  end

  private

  attr_reader :patient

  def default_attributes
    {
      turn_over_id: turn_over_id, 
      moving_on_bed_id: moving_on_bed_id, 
      get_up_id: get_up_id, 
      sitting_position_id: sitting_position_id, 
      stand_up_id: stand_up_id,
      standing_id: standing_id,
      transfer_id: transfer_id,
      wheelchair_operation_id: wheelchair_operation_id,
      walking_id: walking_id, 
      stairs_id: stairs_id, 
      meal_1_id: meal_1_id, 
      shape_1_id: shape_1_id,
      balneum_1_id: balneum_1_id,
      outer_wear_id: outer_wear_id,
      under_wear_id: under_wear_id,
      toilet_1_id: toilet_1_id,
      urination_1_id: urination_1_id,
      defecation_1_id: defecation_1_id,
      bed_transfer_1_id: bed_transfer_1_id,
      toilet_transfer_1_id: toilet_transfer_1_id,
      bathtub_transfer_1_id: bathtub_transfer_1_id,
      walking_1_id: walking_1_id,
      stair_1_id: stair_1_id,
      understanding_1_id: understanding_1_id,
      expression_1_id: expression_1_id,
      alternating_current_1_id: alternating_current_1_id,
      solving_1_id: solving_1_id,
      memory_1_id: memory_1_id,
      total_1: total_1,
      meal_2_id: meal_2_id,
      transfer_2_id: transfer_2_id,
      shape_2_id: shape_2_id,
      toilet_2_id: toilet_2_id,
      balneum_2_id: balneum_2_id,
      walking_2_id: walking_2_id,
      stair_2_id: stair_2_id,
      changing_clothes_id: changing_clothes_id,
      urination_2_id: urination_2_id,
      defecation_2_id: defecation_2_id,
      total_2: total_2,
      relationship_sole_id: relationship_sole_id,
      left_right_difference_id: left_right_difference_id,
      alignment_id: alignment_id,
      alignment_comment: alignment_comment,
      postural_tension_id: postural_tension_id,
      impact_id: impact_id,
      speed: speed,
      stride: stride,
      durability: durability,
      walking_pattern: walking_pattern,
      foot_position: foot_position,
      upset_id: upset_id,
      redundancy_id: redundancy_id,
      applicability_id: applicability_id,
      gait_id: gait_id,
      dementia_degree: dementia_degree,
      impact_daily_life: impact_daily_life,
      pain_area: pain_area,
      appearance_time: appearance_time,
      degree_of_pain: degree_of_pain,
      factor_tissue_id: factor_tissue_id,
      rom_part_degree: rom_part_degree,
      joint_capsule_id: joint_capsule_id,
      soft_tissue_id: soft_tissue_id,
      muscle_weakness: muscle_weakness,
      muscle_weakness_factor: muscle_weakness_factor,
      sense_cooperation: sense_cooperation,
      sense_cooperation_impact: sense_cooperation_impact,
      paresthesia: paresthesia,
      paresthesia_impact: paresthesia_impact,
      others: others,
      generalization: generalization
    }
  end

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :turn_over
  belongs_to :moving_on_bed
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
  belongs_to :relationship_sole
  belongs_to :left_right_difference
  belongs_to :alignment
  belongs_to :postural_tension
  belongs_to :impact
  belongs_to :upset
  belongs_to :redundancy
  belongs_to :applicability
  belongs_to :gait
  belongs_to :factor_tissue
  belongs_to :joint_capsule
  belongs_to :soft_tissue
 end

      
      