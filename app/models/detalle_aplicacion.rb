class DetalleAplicacion < ApplicationRecord
  belongs_to :people
  belongs_to :evaluacion_psicologica
  belongs_to :evaluacion_tecnica
end
