require 'test_helper'

class PlaywrightsControllerTest < ActionController::TestCase
  setup do
    @playwright = playwrights(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:playwrights)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create playwright" do
    assert_difference('Playwright.count') do
      post :create, playwright: { coming_up_description: @playwright.coming_up_description, coming_up_title: @playwright.coming_up_title, happening_now_description: @playwright.happening_now_description, happening_now_title: @playwright.happening_now_title, press: @playwright.press }
    end

    assert_redirected_to playwright_path(assigns(:playwright))
  end

  test "should show playwright" do
    get :show, id: @playwright
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @playwright
    assert_response :success
  end

  test "should update playwright" do
    patch :update, id: @playwright, playwright: { coming_up_description: @playwright.coming_up_description, coming_up_title: @playwright.coming_up_title, happening_now_description: @playwright.happening_now_description, happening_now_title: @playwright.happening_now_title, press: @playwright.press }
    assert_redirected_to playwright_path(assigns(:playwright))
  end

  test "should destroy playwright" do
    assert_difference('Playwright.count', -1) do
      delete :destroy, id: @playwright
    end

    assert_redirected_to playwrights_path
  end
end
