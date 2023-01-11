require "test_helper"

class CatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cat = cats(:one)
  end

  test "should get index" do
    get cats_url, as: :json
    assert_response :success
  end

  test "should create cat" do
    assert_difference("Cat.count") do
      post cats_url, params: { cat: { name: @cat.name } }, as: :json
    end

    assert_response :created
  end

  test "should show cat" do
    get cat_url(@cat), as: :json
    assert_response :success
  end

  test "should update cat" do
    patch cat_url(@cat), params: { cat: { name: @cat.name } }, as: :json
    assert_response :success
  end

  test "should destroy cat" do
    assert_difference("Cat.count", -1) do
      delete cat_url(@cat), as: :json
    end

    assert_response :no_content
  end
end
