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

require 'test_helper'

class ActvidadTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
