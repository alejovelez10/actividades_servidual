# == Schema Information
#
# Table name: seguimientos
#
#  id           :integer          not null, primary key
#  user_id      :integer
#  actividad_id :integer
#  descripcion  :text
#  s_cierre     :boolean
#  porcentaje   :integer
#  cierre       :boolean
#  anexo        :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Seguimiento < ApplicationRecord
	belongs_to :actvidad
	belongs_to :user
	 mount_uploader :anexo, AnexoSeguimientoUploader
	 after_create :seguimiento


	 def seguimiento

            actvidad = Actvidad.find(self.actvidad_id)
            actvidad.porcentaje = self.porcentaje
            actvidad.save
            if self.cierre 

                actvidad.estado_cierre = true
                actvidad.save

            end

	 end
end