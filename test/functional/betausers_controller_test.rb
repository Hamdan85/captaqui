require 'test_helper'

class BetausersControllerTest < ActionController::TestCase
  setup do
    @betauser = betausers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:betausers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create betauser" do
    assert_difference('Betauser.count') do
      post :create, betauser: { email: @betauser.email, howmuch: @betauser.howmuch, name: @betauser.name }
    end

    assert_redirected_to betauser_path(assigns(:betauser))
  end

  test "should show betauser" do
    get :show, id: @betauser
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @betauser
    assert_response :success
  end

  test "should update betauser" do
    put :update, id: @betauser, betauser: { email: @betauser.email, howmuch: @betauser.howmuch, name: @betauser.name }
    assert_redirected_to betauser_path(assigns(:betauser))
  end

  test "should destroy betauser" do
    assert_difference('Betauser.count', -1) do
      delete :destroy, id: @betauser
    end

    assert_redirected_to betausers_path
  end
end
