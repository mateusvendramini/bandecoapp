require 'test_helper'

class DadoInseridosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dado_inserido = dado_inseridos(:one)
  end

  test "should get index" do
    get dado_inseridos_url
    assert_response :success
  end

  test "should get new" do
    get new_dado_inserido_url
    assert_response :success
  end

  test "should create dado_inserido" do
    assert_difference('DadoInserido.count') do
      post dado_inseridos_url, params: { dado_inserido: { horario: @dado_inserido.horario, id_fila: @dado_inserido.id_fila, posicao: @dado_inserido.posicao } }
    end

    assert_redirected_to dado_inserido_url(DadoInserido.last)
  end

  test "should show dado_inserido" do
    get dado_inserido_url(@dado_inserido)
    assert_response :success
  end

  test "should get edit" do
    get edit_dado_inserido_url(@dado_inserido)
    assert_response :success
  end

  test "should update dado_inserido" do
    patch dado_inserido_url(@dado_inserido), params: { dado_inserido: { horario: @dado_inserido.horario, id_fila: @dado_inserido.id_fila, posicao: @dado_inserido.posicao } }
    assert_redirected_to dado_inserido_url(@dado_inserido)
  end

  test "should destroy dado_inserido" do
    assert_difference('DadoInserido.count', -1) do
      delete dado_inserido_url(@dado_inserido)
    end

    assert_redirected_to dado_inseridos_url
  end
end
