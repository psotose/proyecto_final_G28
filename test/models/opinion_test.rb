require 'test_helper'

class OpinionTest < ActiveSupport::TestCase
  # presence
  test "opinion should have rating and comment" do
   @opinion = Opinion.create
   @opinion.save
   assert_not @opinion.valid?
  end
  #numeric
  test "rating should only accept numbers" do
    @opinion = Opinion.create(rating:'buenisima', comment:'requete buena y genial')
    @opinion.save
    assert_not @opinion.valid?
  end  

  #inclusion
  test "rating should only accept numbers between 1 to 5" do
    @opinion = Opinion.create(rating:'6', comment:'requete buena y genial')
    @opinion.save
    assert_not @opinion.valid?
  end
end
