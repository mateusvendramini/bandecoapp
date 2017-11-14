require 'test_helper'

class EstimaFilaControllerTest < ActionDispatch::IntegrationTest
  test "should get update" do
    get estima_fila_update_url
    assert_response :success
  end

end
