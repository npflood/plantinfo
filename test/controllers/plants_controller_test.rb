require 'test_helper'

class PlantsControllerTest < ActionController::TestCase
  setup do
    @plant = plants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:plants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create plant" do
    assert_difference('Plant.count') do
      post :create, plant: { cooking_and_nutrition: @plant.cooking_and_nutrition, cultivation: @plant.cultivation, description: @plant.description, english_common_name: @plant.english_common_name, family_names: @plant.family_names, harvesting_and_seed_production: @plant.harvesting_and_seed_production, latin_name: @plant.latin_name, origin: @plant.origin, other_common_names: @plant.other_common_names, pests_and_diseases: @plant.pests_and_diseases, uses: @plant.uses }
    end

    assert_redirected_to plant_path(assigns(:plant))
  end

  test "should show plant" do
    get :show, id: @plant
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @plant
    assert_response :success
  end

  test "should update plant" do
    patch :update, id: @plant, plant: { cooking_and_nutrition: @plant.cooking_and_nutrition, cultivation: @plant.cultivation, description: @plant.description, english_common_name: @plant.english_common_name, family_names: @plant.family_names, harvesting_and_seed_production: @plant.harvesting_and_seed_production, latin_name: @plant.latin_name, origin: @plant.origin, other_common_names: @plant.other_common_names, pests_and_diseases: @plant.pests_and_diseases, uses: @plant.uses }
    assert_redirected_to plant_path(assigns(:plant))
  end

  test "should destroy plant" do
    assert_difference('Plant.count', -1) do
      delete :destroy, id: @plant
    end

    assert_redirected_to plants_path
  end
end
