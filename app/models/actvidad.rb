# == Schema Information
#
# Table name: actvidads
#
#  id             :integer          not null, primary key
#  consecutivo    :integer
#  tipo           :string
#  prioridad      :string
#  responsable_id :integer
#  nombre         :string
#  descripcion    :text
#  anexo          :string
#  f_entrega      :date
#  porcentaje     :integer
#  estado_cierre  :boolean
#  estado_envio   :boolean
#  contador       :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  user_id        :integer
#

class Actvidad < ApplicationRecord
	has_and_belongs_to_many :users
	mount_uploader :anexo, AnexoActividadUploader
	belongs_to :responsable, :class_name => 'User'
	belongs_to :user, :class_name => 'User'
	has_many :seguimientos
	after_save :enviar

def enviar

	   if self.estado_envio && (self.e_vencimiento != "Vigente" &&  self.e_vencimiento != "Proxima a Vencer" &&  self.e_vencimiento != "Vencida")
        user = User.find(self.responsable_id)
        @times = self.f_entrega.to_time
        @time =  @times.to_i - Time.now.to_i  
        self.contador = (@time / 60 / 60/ 24) + 1
        self.e_vencimiento = "Vigente"
        save
        ActividadMailer.creacion(user,self).deliver
        self.users.each do |user|
                
                ActividadMailer.invitado(user,self).deliver
        end
     
        
      end
 end     

end
