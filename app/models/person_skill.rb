class PersonSkill < ApplicationRecord
  belongs_to :person
  belongs_to :skill
end
