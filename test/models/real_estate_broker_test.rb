require 'test_helper'

class RealEstateBrokerTest < ActiveSupport::TestCase
   #presence
  test "should not create real_estate_broker without rut and name" do
    @real_estate_broker = RealEstateBroker.new
    @real_estate_broker.rut = ""
    @real_estate_broker.name = ""
    assert_not @real_estate_broker.valid?
  end
  #unicity
  test "should not create two real_estate_brokers with same rut" do
    @real_estate_broker = RealEstateBroker.create(rut:'1-9', name:'Prueba6', user_id:1)
    @real_estate_broker.save
    @real_estate_brokertest= RealEstateBroker.create(rut:'1.9', name:'1Test')
    @real_estate_brokertest.save
    assert_not @real_estate_brokertest.valid?
  end 
  #numeric
  test "rut should not include letters" do
    @real_estate_broker = RealEstateBroker.new
    @real_estate_broker.rut = "1-k"
    assert_not @real_estate_broker.valid?
  end  

  test "rut should be valid" do
    @real_estate_broker = RealEstateBroker.new
    @real_estate_broker.rut = "256.723-7"
    assert_not @real_estate_broker.valid?
  end  

  test "should not create real_estate_broker with name shorter than 2 digits" do
    @real_estate_broker = RealEstateBroker.create(rut:'1-9', name:'A', user_id:1)
    @real_estate_broker.save
    assert_not @real_estate_broker.valid?
  end

end
