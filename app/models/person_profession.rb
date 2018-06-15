class PersonProfession < ApplicationRecord
  belongs_to :person
  belongs_to :profession
  belongs_to :grade_academic
end
