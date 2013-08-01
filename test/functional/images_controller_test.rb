require 'test_helper'

class ImagesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_edit
    get :edit, :id => Image.first
    assert_template 'edit'
  end

  def test_update_invalid
    Image.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Image.first
    assert_template 'edit'
  end

  def test_update_valid
    Image.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Image.first
    assert_redirected_to images_url
  end

  def test_destroy
    image = Image.first
    delete :destroy, :id => image
    assert_redirected_to images_url
    assert !Image.exists?(image.id)
  end
end
