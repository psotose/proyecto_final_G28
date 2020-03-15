require 'test_helper'

class RealEstateBrokerTest < ActiveSupport::TestCase
   #presence
  test "should not create real_estate_broker without rut and name" do
    @real_estate_broker = Real_estate_broker.create(user_id:1)
    @user.save
    assert_not @real_estate_broker.valid?
  end
  #unicity
  test "should not create two real_estate_brokers with same rut" do
    @real_estate_broker = Real_estate_brokers.create(rut:'1-9', name:'Prueba6', user_id:1)
    @real_estate_broker.save
    @real_estate_brokertest= Real_estate_broker.create(rut:'1.9', name:'1Test')
    @real_estate_brokertest.save
    assert_not @real_estate_brokertest.valid?
  end 

  test "should not create real_estate_broker with name shorter than 2 digits" do
    @real_estate_broker = Real_estate_broker.create(rut:'1-9', name:'A', user_id:1)
    @user.save
    assert_not @real_estate_broker.valid?
  end

end
