require 'test_helper'

class RepairRequestsControllerTest < ActionController::TestCase
  setup do
    @repair_request = repair_requests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:repair_requests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create repair_request" do
    assert_difference('RepairRequest.count') do
      post :create, repair_request: { close_date: @repair_request.close_date, open_date: @repair_request.open_date, request_details: @repair_request.request_details, request_response: @repair_request.request_response, responder_id: @repair_request.responder_id, submitter_id: @repair_request.submitter_id }
    end

    assert_redirected_to repair_request_path(assigns(:repair_request))
  end

  test "should show repair_request" do
    get :show, id: @repair_request
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @repair_request
    assert_response :success
  end

  test "should update repair_request" do
    put :update, id: @repair_request, repair_request: { close_date: @repair_request.close_date, open_date: @repair_request.open_date, request_details: @repair_request.request_details, request_response: @repair_request.request_response, responder_id: @repair_request.responder_id, submitter_id: @repair_request.submitter_id }
    assert_redirected_to repair_request_path(assigns(:repair_request))
  end

  test "should destroy repair_request" do
    assert_difference('RepairRequest.count', -1) do
      delete :destroy, id: @repair_request
    end

    assert_redirected_to repair_requests_path
  end
end
