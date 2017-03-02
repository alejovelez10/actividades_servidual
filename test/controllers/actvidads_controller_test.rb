require 'test_helper'

class ActvidadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @actvidad = actvidads(:one)
  end

  test "should get index" do
    get actvidads_url
    assert_response :success
  end

  test "should get new" do
    get new_actvidad_url
    assert_response :success
  end

  test "should create actvidad" do
    assert_difference('Actvidad.count') do
      post actvidads_url, params: { actvidad: { anexo: @actvidad.anexo, consecutivo: @actvidad.consecutivo, contador: @actvidad.contador, descripcion: @actvidad.descripcion, estado_cierre: @actvidad.estado_cierre, estado_envio: @actvidad.estado_envio, f_entrega: @actvidad.f_entrega, nombre: @actvidad.nombre, porcentaje: @actvidad.porcentaje, prioridad: @actvidad.prioridad, responsable_id: @actvidad.responsable_id, tipo: @actvidad.tipo, user_id: @actvidad.user_id } }
    end

    assert_redirected_to actvidad_url(Actvidad.last)
  end

  test "should show actvidad" do
    get actvidad_url(@actvidad)
    assert_response :success
  end

  test "should get edit" do
    get edit_actvidad_url(@actvidad)
    assert_response :success
  end

  test "should update actvidad" do
    patch actvidad_url(@actvidad), params: { actvidad: { anexo: @actvidad.anexo, consecutivo: @actvidad.consecutivo, contador: @actvidad.contador, descripcion: @actvidad.descripcion, estado_cierre: @actvidad.estado_cierre, estado_envio: @actvidad.estado_envio, f_entrega: @actvidad.f_entrega, nombre: @actvidad.nombre, porcentaje: @actvidad.porcentaje, prioridad: @actvidad.prioridad, responsable_id: @actvidad.responsable_id, tipo: @actvidad.tipo, user_id: @actvidad.user_id } }
    assert_redirected_to actvidad_url(@actvidad)
  end

  test "should destroy actvidad" do
    assert_difference('Actvidad.count', -1) do
      delete actvidad_url(@actvidad)
    end

    assert_redirected_to actvidads_url
  end
end
