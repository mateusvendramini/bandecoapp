require 'test_helper'

class FilasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fila = filas(:one)
  end

  test "should get index" do
    get filas_url
    assert_response :success
  end

  test "should get new" do
    get new_fila_url
    assert_response :success
  end

  test "should create fila" do
    assert_difference('Fila.count') do
      post filas_url, params: { fila: { estado_fila: @fila.estado_fila, id_restaurante: @fila.id_restaurante } }
    end

    assert_redirected_to fila_url(Fila.last)
  end

  test "should show fila" do
    get fila_url(@fila)
    assert_response :success
  end

  test "should get edit" do
    get edit_fila_url(@fila)
    assert_response :success
  end

  test "should update fila" do
    patch fila_url(@fila), params: { fila: { estado_fila: @fila.estado_fila, id_restaurante: @fila.id_restaurante } }
    assert_redirected_to fila_url(@fila)
  end

  test "should destroy fila" do
    assert_difference('Fila.count', -1) do
      delete fila_url(@fila)
    end

    assert_redirected_to filas_url
  end
end
