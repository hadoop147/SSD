require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get products_url
    assert_response :success
  end

  test "should get new" do
    get new_product_url
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post products_url, params: { product: { brand_id: @product.brand_id, category_id: @product.category_id, colours: @product.colours, description: @product.description, image_url: @product.image_url, offer_id: @product.offer_id, prod_gender: @product.prod_gender, prod_name: @product.prod_name, prod_price: @product.prod_price, prod_size: @product.prod_size, stock_quantity: @product.stock_quantity } }
    end

    assert_redirected_to product_url(Product.last)
  end

  test "should show product" do
    get product_url(@product)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_url(@product)
    assert_response :success
  end

  test "should update product" do
    patch product_url(@product), params: { product: { brand_id: @product.brand_id, category_id: @product.category_id, colours: @product.colours, description: @product.description, image_url: @product.image_url, offer_id: @product.offer_id, prod_gender: @product.prod_gender, prod_name: @product.prod_name, prod_price: @product.prod_price, prod_size: @product.prod_size, stock_quantity: @product.stock_quantity } }
    assert_redirected_to product_url(@product)
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete product_url(@product)
    end

    assert_redirected_to products_url
  end
end
