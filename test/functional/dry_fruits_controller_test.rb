require 'test_helper'

class DryFruitsControllerTest < ActionController::TestCase
  setup do
    @dry_fruit = dry_fruits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dry_fruits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dry_fruit" do
    assert_difference('DryFruit.count') do
      post :create, :dry_fruit => { :about => @dry_fruit.about, :benefits => @dry_fruit.benefits, :calcium => @dry_fruit.calcium, :carbohydrates => @dry_fruit.carbohydrates, :energy => @dry_fruit.energy, :extra => @dry_fruit.extra, :fat => @dry_fruit.fat, :id => @dry_fruit.id, :imagelarge1 => @dry_fruit.imagelarge1, :imagelarge2 => @dry_fruit.imagelarge2, :imagelarge3 => @dry_fruit.imagelarge3, :imagesmall => @dry_fruit.imagesmall, :iron => @dry_fruit.iron, :maganese => @dry_fruit.maganese, :magnesium => @dry_fruit.magnesium, :name => @dry_fruit.name, :phosphorus => @dry_fruit.phosphorus, :potassium => @dry_fruit.potassium, :protein => @dry_fruit.protein, :scientificname => @dry_fruit.scientificname, :sideeffects => @dry_fruit.sideeffects, :sodium => @dry_fruit.sodium, :vitamin_a => @dry_fruit.vitamin_a, :vitamin_b1 => @dry_fruit.vitamin_b1, :vitamin_b12 => @dry_fruit.vitamin_b12, :vitamin_b2 => @dry_fruit.vitamin_b2, :vitamin_b3 => @dry_fruit.vitamin_b3, :vitamin_b5 => @dry_fruit.vitamin_b5, :vitamin_b6 => @dry_fruit.vitamin_b6, :vitamin_b9 => @dry_fruit.vitamin_b9, :vitamin_c => @dry_fruit.vitamin_c, :vitamin_d => @dry_fruit.vitamin_d, :vitamin_e => @dry_fruit.vitamin_e, :vitamin_k => @dry_fruit.vitamin_k, :zinc => @dry_fruit.zinc }
    end

    assert_redirected_to dry_fruit_path(assigns(:dry_fruit))
  end

  test "should show dry_fruit" do
    get :show, :id => @dry_fruit
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @dry_fruit
    assert_response :success
  end

  test "should update dry_fruit" do
    put :update, :id => @dry_fruit, :dry_fruit => { :about => @dry_fruit.about, :benefits => @dry_fruit.benefits, :calcium => @dry_fruit.calcium, :carbohydrates => @dry_fruit.carbohydrates, :energy => @dry_fruit.energy, :extra => @dry_fruit.extra, :fat => @dry_fruit.fat, :id => @dry_fruit.id, :imagelarge1 => @dry_fruit.imagelarge1, :imagelarge2 => @dry_fruit.imagelarge2, :imagelarge3 => @dry_fruit.imagelarge3, :imagesmall => @dry_fruit.imagesmall, :iron => @dry_fruit.iron, :maganese => @dry_fruit.maganese, :magnesium => @dry_fruit.magnesium, :name => @dry_fruit.name, :phosphorus => @dry_fruit.phosphorus, :potassium => @dry_fruit.potassium, :protein => @dry_fruit.protein, :scientificname => @dry_fruit.scientificname, :sideeffects => @dry_fruit.sideeffects, :sodium => @dry_fruit.sodium, :vitamin_a => @dry_fruit.vitamin_a, :vitamin_b1 => @dry_fruit.vitamin_b1, :vitamin_b12 => @dry_fruit.vitamin_b12, :vitamin_b2 => @dry_fruit.vitamin_b2, :vitamin_b3 => @dry_fruit.vitamin_b3, :vitamin_b5 => @dry_fruit.vitamin_b5, :vitamin_b6 => @dry_fruit.vitamin_b6, :vitamin_b9 => @dry_fruit.vitamin_b9, :vitamin_c => @dry_fruit.vitamin_c, :vitamin_d => @dry_fruit.vitamin_d, :vitamin_e => @dry_fruit.vitamin_e, :vitamin_k => @dry_fruit.vitamin_k, :zinc => @dry_fruit.zinc }
    assert_redirected_to dry_fruit_path(assigns(:dry_fruit))
  end

  test "should destroy dry_fruit" do
    assert_difference('DryFruit.count', -1) do
      delete :destroy, :id => @dry_fruit
    end

    assert_redirected_to dry_fruits_path
  end
end
