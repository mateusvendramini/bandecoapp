require 'test_helper'

class PaginaAdminControllerTest < ActionDispatch::IntegrationTest
  test "should get admin" do
    get pagina_admin_admin_url
    assert_response :success
  end

end
