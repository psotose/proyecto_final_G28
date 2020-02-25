require 'test_helper'

class RealEstateBrokersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @real_estate_broker = real_estate_brokers(:one)
  end

  test "should get index" do
    get real_estate_brokers_url
    assert_response :success
  end

  test "should get new" do
    get new_real_estate_broker_url
    assert_response :success
  end

  test "should create real_estate_broker" do
    assert_difference('RealEstateBroker.count') do
      post real_estate_brokers_url, params: { real_estate_broker: { agent: @real_estate_broker.agent, image: @real_estate_broker.image, mail: @real_estate_broker.mail, name: @real_estate_broker.name, phone: @real_estate_broker.phone, rut: @real_estate_broker.rut } }
    end

    assert_redirected_to real_estate_broker_url(RealEstateBroker.last)
  end

  test "should show real_estate_broker" do
    get real_estate_broker_url(@real_estate_broker)
    assert_response :success
  end

  test "should get edit" do
    get edit_real_estate_broker_url(@real_estate_broker)
    assert_response :success
  end

  test "should update real_estate_broker" do
    patch real_estate_broker_url(@real_estate_broker), params: { real_estate_broker: { agent: @real_estate_broker.agent, image: @real_estate_broker.image, mail: @real_estate_broker.mail, name: @real_estate_broker.name, phone: @real_estate_broker.phone, rut: @real_estate_broker.rut } }
    assert_redirected_to real_estate_broker_url(@real_estate_broker)
  end

  test "should destroy real_estate_broker" do
    assert_difference('RealEstateBroker.count', -1) do
      delete real_estate_broker_url(@real_estate_broker)
    end

    assert_redirected_to real_estate_brokers_url
  end
end
