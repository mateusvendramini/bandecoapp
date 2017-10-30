require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get novo_restaurante" do
    get static_pages_novo_restaurante_url
    assert_response :success
  end

end
