# テーブル設計

##  users テーブル
| Column              | Type       | Options                    |
| ------------------- | ---------- | -------------------------- |
| facility_name       | string     |                            |
| department_name     | string     |                            |
| therapist_name      | string     | null: false                |
| email               | string     | null: false, unique: true  |
| encrypted_password  | string     | null: false                |

### Association
has_many :patients
has_many :patient_details

##  patients テーブル
| Column                    | Type          | Options                        |
| ------------------------- | ------------- | ------------------------------ |
| name                      | string        | null: false                    |
| age                       | integer       | null: false                    |
| sex_id                    | integer       | null: false                    |
| height                    | integer       |                                |
| weight                    | integer       |                                |
| postal_code               | string        |                                |
| address                   | string        |                                |
| family_living_together_id | integer       |                                |
| disease_name              | string        | null: false                    |
| medical_history           | string        | null: false                    |
| surgical_history          | string        |                                |
| infection                 | string        |                                |
| comment                   | text          |                                |
| user                      | references    | null: false, foreign_key: true |

### Association
belongs_to :user

##  registered_patient_details テーブル
| Column                 | Type       | Options                        |
| ---------------------- | ---------- | ------------------------------ |

| registered_patient_id  |       


### Association
belongs_to :patient

##  registered_patients テーブル
| Column             | Type         | Options                        |
| ------------------ | ------------ | ------------------------------ |
| patient_id         | references   | null: false, foreign_key: true |
| user_id            | references   | null: false, foreign_key: true |


### Association
belongs_to :user
has_one :patient_detail
belongs_to :patient
