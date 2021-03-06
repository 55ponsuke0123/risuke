class ChangeUsersColumns < ActiveRecord::Migration[6.0]
  def change
    remove_column :patient_details, :turn_over, :integer
    remove_column :patient_details, :get_up, :integer
    remove_column :patient_details, :sitting_position, :integer
    remove_column :patient_details, :stand_up, :integer
    remove_column :patient_details, :standing, :integer
    remove_column :patient_details, :transfer, :integer
    remove_column :patient_details, :wheelchair_operation, :integer
    remove_column :patient_details, :walking, :integer
    remove_column :patient_details, :stairs, :integer
    remove_column :patient_details, :meal_1, :integer
    remove_column :patient_details, :shape_1, :integer
    remove_column :patient_details, :balneum_1, :integer
    remove_column :patient_details, :outer_wear, :integer
    remove_column :patient_details, :under_wear, :integer
    remove_column :patient_details, :toilet_1, :integer
    remove_column :patient_details, :urination_1, :integer
    remove_column :patient_details, :defecation_1, :integer
    remove_column :patient_details, :bed_transfer_1, :integer
    remove_column :patient_details, :toilet_transfer_1, :integer
    remove_column :patient_details, :bathtub_transfer_1, :integer
    remove_column :patient_details, :walking_1, :integer
    remove_column :patient_details, :stair_1, :integer
    remove_column :patient_details, :understanding_1, :integer
    remove_column :patient_details, :expression_1, :integer
    remove_column :patient_details, :alternating_current_1, :integer
    remove_column :patient_details, :solving_1, :integer
    remove_column :patient_details, :memory_1, :integer
    remove_column :patient_details, :meal_2, :integer
    remove_column :patient_details, :transfer_2, :integer
    remove_column :patient_details, :shape_2, :integer
    remove_column :patient_details, :toilet_2, :integer
    remove_column :patient_details, :balneum_2, :integer
    remove_column :patient_details, :walking_2, :integer
    remove_column :patient_details, :stair_2, :integer
    remove_column :patient_details, :changing_clothes, :integer
    remove_column :patient_details, :urination_2, :integer
    remove_column :patient_details, :defecation_2, :integer
    remove_column :patient_details, :relationship_sole, :integer
    remove_column :patient_details, :left_right_difference, :integer
    remove_column :patient_details, :alignment, :string
    remove_column :patient_details, :postural_tension, :integer
    remove_column :patient_details, :impact, :integer
    remove_column :patient_details, :upset, :integer
    remove_column :patient_details, :redundancy, :integer
    remove_column :patient_details, :applicability, :integer
    remove_column :patient_details, :gait, :integer
    remove_column :patient_details, :factor_tissue, :integer
    remove_column :patient_details, :joint_capsule, :integer
    remove_column :patient_details, :soft_tissue, :integer

    add_column :patient_details, :turn_over_id, :integer
    add_column :patient_details, :get_up_id, :integer
    add_column :patient_details, :sitting_position_id, :integer
    add_column :patient_details, :stand_up_id, :integer
    add_column :patient_details, :standing_id, :integer
    add_column :patient_details, :transfer_id, :integer
    add_column :patient_details, :wheelchair_operation_id, :integer
    add_column :patient_details, :walking_id, :integer
    add_column :patient_details, :stairs_id, :integer
    add_column :patient_details, :meal_1_id, :integer
    add_column :patient_details, :shape_1_id, :integer
    add_column :patient_details, :balneum_1_id, :integer
    add_column :patient_details, :outer_wear_id, :integer
    add_column :patient_details, :under_wear_id, :integer
    add_column :patient_details, :toilet_1_id, :integer
    add_column :patient_details, :urination_1_id, :integer
    add_column :patient_details, :defecation_1_id, :integer
    add_column :patient_details, :bed_transfer_1_id, :integer
    add_column :patient_details, :toilet_transfer_1_id, :integer
    add_column :patient_details, :bathtub_transfer_1_id, :integer
    add_column :patient_details, :walking_1_id, :integer
    add_column :patient_details, :stair_1_id, :integer
    add_column :patient_details, :understanding_1_id, :integer
    add_column :patient_details, :expression_1_id, :integer
    add_column :patient_details, :alternating_current_1_id, :integer
    add_column :patient_details, :solving_1_id, :integer
    add_column :patient_details, :memory_1_id, :integer
    add_column :patient_details, :meal_2_id, :integer
    add_column :patient_details, :transfer_2_id, :integer
    add_column :patient_details, :shape_2_id, :integer
    add_column :patient_details, :toilet_2_id, :integer
    add_column :patient_details, :balneum_2_id, :integer
    add_column :patient_details, :walking_2_id, :integer
    add_column :patient_details, :stair_2_id, :integer
    add_column :patient_details, :changing_clothes_id, :integer
    add_column :patient_details, :urination_2_id, :integer
    add_column :patient_details, :defecation_2_id, :integer
    add_column :patient_details, :relationship_sole_id, :integer
    add_column :patient_details, :left_right_difference_id, :integer
    add_column :patient_details, :alignment_id, :integer
    add_column :patient_details, :postural_tension_id, :integer
    add_column :patient_details, :impact_id, :integer
    add_column :patient_details, :upset_id, :integer
    add_column :patient_details, :redundancy_id, :integer
    add_column :patient_details, :applicability_id, :integer
    add_column :patient_details, :gait_id, :integer
    add_column :patient_details, :factor_tissue_id, :integer
    add_column :patient_details, :joint_capsule_id, :integer
    add_column :patient_details, :soft_tissue_id, :integer
  end
end
