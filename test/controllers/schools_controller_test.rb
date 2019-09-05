require 'test_helper'

class SchoolsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @school = schools(:one)
  end

  test "should get index" do
    get schools_url, as: :json
    assert_response :success
  end

  test "should create school" do
    assert_difference('School.count') do
      post schools_url, params: { school: { address: @school.address, district_id: @school.district_id, grade_range: @school.grade_range, name: @school.name, rating: @school.rating, type: @school.type, website: @school.website } }, as: :json
    end

    assert_response 201
  end

  test "should show school" do
    get school_url(@school), as: :json
    assert_response :success
  end

  test "should update school" do
    patch school_url(@school), params: { school: { address: @school.address, district_id: @school.district_id, grade_range: @school.grade_range, name: @school.name, rating: @school.rating, type: @school.type, website: @school.website } }, as: :json
    assert_response 200
  end

  test "should destroy school" do
    assert_difference('School.count', -1) do
      delete school_url(@school), as: :json
    end

    assert_response 204
  end
end
