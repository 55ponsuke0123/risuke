# テーブル設計

##  users テーブル
| Column              | Type       | Options                    |
| ------------------- | ---------- | -------------------------- |
| facility_name       | string     |                            |
| department_name     | string     |                            |
| email               | string     | null: false, unique: true  |
| encrypted_password  | string     | null: false                |

### Association
has_many :patients
has_many :patient_details

##  patients テーブル
| Column                 | Type          | Options                        |
| ---------------------- | ------------- | ------------------------------ |
| family_name_kanji      | string        | null: false                    |
| first_name_kanji       | string        | null: false                    |
| age                    | integer       | null: false                    |
| sex                    | integer       | null: false                    |
| postal_code            | string        | null: false                    |
| address                | string        | null: false                    |
| family_living_together | integer       |                                |
| disease_name           | string        |                                |
| medical_history        | string        |                                |
| surgical_history       | string        |                                |
| infection              | string        |                                |
| classification         | string        |                                |
| comment                | text          |                                |
| user                   | references    | null: false, foreign_key: true |

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
