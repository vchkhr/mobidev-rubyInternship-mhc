require "test_helper"

class TechniquesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @technique = techniques(:one)
  end

  test "should get index" do
    get techniques_url
    assert_response :success
  end

  test "should get new" do
    get new_technique_url
    assert_response :success
  end

  test "should create technique" do
    assert_difference('Technique.count') do
      post techniques_url, params: { technique: { age_end: @technique.age_end, age_start: @technique.age_start, description: @technique.description, duration_end: @technique.duration_end, duration_start: @technique.duration_start, image: @technique.image, title: @technique.title } }
    end

    assert_redirected_to technique_url(Technique.last)
  end

  test "should get edit" do
    get edit_technique_url(@technique)
    assert_response :success
  end

  test "should update technique" do
    patch technique_url(@technique), params: { technique: { age_end: @technique.age_end, age_start: @technique.age_start, description: @technique.description, duration_end: @technique.duration_end, duration_start: @technique.duration_start, image: @technique.image, title: @technique.title } }
    assert_redirected_to technique_url(@technique)
  end

  test "should destroy technique" do
    assert_difference('Technique.count', -1) do
      delete technique_url(@technique)
    end

    assert_redirected_to techniques_url
  end
end
