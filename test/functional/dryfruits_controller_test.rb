require 'test_helper'

class DryfruitsControllerTest < ActionController::TestCase
  setup do
    @dryfruit = dryfruits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dryfruits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dryfruit" do
    assert_difference('Dryfruit.count') do
      post :create, :dryfruit => { :id => @dryfruit.id, :image => @dryfruit.image, :name => @dryfruit.name, :scientificname => @dryfruit.scientificname }
    end

    assert_redirected_to dryfruit_path(assigns(:dryfruit))
  end

  test "should show dryfruit" do
    get :show, :id => @dryfruit
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @dryfruit
    assert_response :success
  end

  test "should update dryfruit" do
    put :update, :id => @dryfruit, :dryfruit => { :id => @dryfruit.id, :image => @dryfruit.image, :name => @dryfruit.name, :scientificname => @dryfruit.scientificname }
    assert_redirected_to dryfruit_path(assigns(:dryfruit))
  end

  test "should destroy dryfruit" do
    assert_difference('Dryfruit.count', -1) do
      delete :destroy, :id => @dryfruit
    end

    assert_redirected_to dryfruits_path
  end
end
