require 'test_helper'

class AuthenticatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @authenticate = authenticates(:one)
  end

  test "should get index" do
    get authenticates_url
    assert_response :success
  end

  test "should get new" do
    get new_authenticate_url
    assert_response :success
  end

  test "should create authenticate" do
    assert_difference('Authenticate.count') do
      post authenticates_url, params: { authenticate: { fecha_hora: @authenticate.fecha_hora, register_id: @authenticate.register_id, user_id: @authenticate.user_id } }
    end

    assert_redirected_to authenticate_url(Authenticate.last)
  end

  test "should show authenticate" do
    get authenticate_url(@authenticate)
    assert_response :success
  end

  test "should get edit" do
    get edit_authenticate_url(@authenticate)
    assert_response :success
  end

  test "should update authenticate" do
    patch authenticate_url(@authenticate), params: { authenticate: { fecha_hora: @authenticate.fecha_hora, register_id: @authenticate.register_id, user_id: @authenticate.user_id } }
    assert_redirected_to authenticate_url(@authenticate)
  end

  test "should destroy authenticate" do
    assert_difference('Authenticate.count', -1) do
      delete authenticate_url(@authenticate)
    end

    assert_redirected_to authenticates_url
  end
end
