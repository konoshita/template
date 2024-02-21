require 'test_helper'

class OdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @oder = oders(:one)
  end

  test "should get index" do
    get oders_url
    assert_response :success
  end

  test "should get new" do
    get new_oder_url
    assert_response :success
  end

  test "should create oder" do
    assert_difference('Oder.count') do
      post oders_url, params: { oder: {  } }
    end

    assert_redirected_to oder_url(Oder.last)
  end

  test "should show oder" do
    get oder_url(@oder)
    assert_response :success
  end

  test "should get edit" do
    get edit_oder_url(@oder)
    assert_response :success
  end

  test "should update oder" do
    patch oder_url(@oder), params: { oder: {  } }
    assert_redirected_to oder_url(@oder)
  end

  test "should destroy oder" do
    assert_difference('Oder.count', -1) do
      delete oder_url(@oder)
    end

    assert_redirected_to oders_url
  end
end
