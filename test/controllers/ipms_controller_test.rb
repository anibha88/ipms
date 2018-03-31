require 'test_helper'

class IpmsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ipm = ipms(:one)
  end

  test "should get index" do
    get ipms_url
    assert_response :success
  end

  test "should get new" do
    get new_ipm_url
    assert_response :success
  end

  test "should create ipm" do
    assert_difference('Ipm.count') do
      post ipms_url, params: { ipm: { building: @ipm.building, building_type: @ipm.building_type, city: @ipm.city, component: @ipm.component, floor: @ipm.floor, office: @ipm.office, organisation: @ipm.organisation } }
    end

    assert_redirected_to ipm_url(Ipm.last)
  end

  test "should show ipm" do
    get ipm_url(@ipm)
    assert_response :success
  end

  test "should get edit" do
    get edit_ipm_url(@ipm)
    assert_response :success
  end

  test "should update ipm" do
    patch ipm_url(@ipm), params: { ipm: { building: @ipm.building, building_type: @ipm.building_type, city: @ipm.city, component: @ipm.component, floor: @ipm.floor, office: @ipm.office, organisation: @ipm.organisation } }
    assert_redirected_to ipm_url(@ipm)
  end

  test "should destroy ipm" do
    assert_difference('Ipm.count', -1) do
      delete ipm_url(@ipm)
    end

    assert_redirected_to ipms_url
  end
end
