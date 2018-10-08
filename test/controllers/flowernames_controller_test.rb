require 'test_helper'

class FlowernamesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @flowername = flowernames(:one)
  end

  test "should get index" do
    get flowernames_url
    assert_response :success
  end

  test "should get new" do
    get new_flowername_url
    assert_response :success
  end

  test "should create flowername" do
    assert_difference('Flowername.count') do
      post flowernames_url, params: { flowername: { description: @flowername.description, name: @flowername.name } }
    end

    assert_redirected_to flowername_url(Flowername.last)
  end

  test "should show flowername" do
    get flowername_url(@flowername)
    assert_response :success
  end

  test "should get edit" do
    get edit_flowername_url(@flowername)
    assert_response :success
  end

  test "should update flowername" do
    patch flowername_url(@flowername), params: { flowername: { description: @flowername.description, name: @flowername.name } }
    assert_redirected_to flowername_url(@flowername)
  end

  test "should destroy flowername" do
    assert_difference('Flowername.count', -1) do
      delete flowername_url(@flowername)
    end

    assert_redirected_to flowernames_url
  end
end
