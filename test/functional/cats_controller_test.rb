require 'test_helper'

class CatsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Cat.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Cat.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Cat.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to cat_url(assigns(:cat))
  end

  def test_edit
    get :edit, :id => Cat.first
    assert_template 'edit'
  end

  def test_update_invalid
    Cat.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Cat.first
    assert_template 'edit'
  end

  def test_update_valid
    Cat.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Cat.first
    assert_redirected_to cat_url(assigns(:cat))
  end

  def test_destroy
    cat = Cat.first
    delete :destroy, :id => cat
    assert_redirected_to cats_url
    assert !Cat.exists?(cat.id)
  end
end
