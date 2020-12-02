require 'test_helper'

class PaymentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @payment = payments(:one)
  end

  test "should get index" do
    get payments_url
    assert_response :success
  end

  test "should get new" do
    get new_payment_url
    assert_response :success
  end

  test "should create payment" do
    assert_difference('Payment.count') do
      post payments_url, params: { payment: { card_code: @payment.card_code, card_number: @payment.card_number, customer_id: @payment.customer_id, expiration_date: @payment.expiration_date, order_id: @payment.order_id, pay_method: @payment.pay_method, shipping_id: @payment.shipping_id } }
    end

    assert_redirected_to payment_url(Payment.last)
  end

  test "should show payment" do
    get payment_url(@payment)
    assert_response :success
  end

  test "should get edit" do
    get edit_payment_url(@payment)
    assert_response :success
  end

  test "should update payment" do
    patch payment_url(@payment), params: { payment: { card_code: @payment.card_code, card_number: @payment.card_number, customer_id: @payment.customer_id, expiration_date: @payment.expiration_date, order_id: @payment.order_id, pay_method: @payment.pay_method, shipping_id: @payment.shipping_id } }
    assert_redirected_to payment_url(@payment)
  end

  test "should destroy payment" do
    assert_difference('Payment.count', -1) do
      delete payment_url(@payment)
    end

    assert_redirected_to payments_url
  end
end
