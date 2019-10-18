require 'minitest/autorun'
require 'mcc-ruby'

class MccTest < Minitest::Test
  def setup
    @yaml = YAML::load_file(File.join(__dir__, '../lib/mcc-ruby/mcc_codes.yaml'))
    @mcc = {"mcc"=>"5814", "edited_description"=>"Fast Food Restaurants", "combined_description"=>"Fast Food Restaurants", "usda_description"=>"Fast Food Restaurants", "irs_description"=>"Fast Food Restaurants", "irs_reportable"=>"No1.6041-3(c)", "id"=>804}
  end

  def test_all
    assert_equal Mcc.all, @yaml
  end

  def test_code
    assert_equal Mcc.code('5814'), @mcc
  end

  def test_where
    assert_equal Mcc.where(edited_description: 'Fast Food Restaurants'), @mcc
  end
end