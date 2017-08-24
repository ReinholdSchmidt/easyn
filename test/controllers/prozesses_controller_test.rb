require 'test_helper'

class ProzessesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prozess = prozesses(:one)
  end

  test "should get index" do
    get prozesses_url
    assert_response :success
  end

  test "should get new" do
    get new_prozess_url
    assert_response :success
  end

  test "should create prozess" do
    assert_difference('Prozess.count') do
      post prozesses_url, params: { prozess: { abletoviernull: @prozess.abletoviernull, bestsolution: @prozess.bestsolution, description: @prozess.description, istproz_id: @prozess.istproz_id, istprozess: @prozess.istprozess, statusprozess: @prozess.statusprozess, title: @prozess.title } }
    end

    assert_redirected_to prozess_url(Prozess.last)
  end

  test "should show prozess" do
    get prozess_url(@prozess)
    assert_response :success
  end

  test "should get edit" do
    get edit_prozess_url(@prozess)
    assert_response :success
  end

  test "should update prozess" do
    patch prozess_url(@prozess), params: { prozess: { abletoviernull: @prozess.abletoviernull, bestsolution: @prozess.bestsolution, description: @prozess.description, istproz_id: @prozess.istproz_id, istprozess: @prozess.istprozess, statusprozess: @prozess.statusprozess, title: @prozess.title } }
    assert_redirected_to prozess_url(@prozess)
  end

  test "should destroy prozess" do
    assert_difference('Prozess.count', -1) do
      delete prozess_url(@prozess)
    end

    assert_redirected_to prozesses_url
  end
end
