require 'minitest/autorun'
require 'mcc-ruby'

class MCCTest < Minitest::Test
  def setup
    @data = YAML::load_file(File.join(__dir__, '../lib/mcc-ruby/mcc_codes.yaml'))
  end

  def test__load_data
    assert_equal MCC._load_data.count, @data.count
  end

  def test_all
    assert_equal MCC.all.last.mcc, '9950'
  end

  def test_code
    assert_equal MCC.code('5814').edited_description, 'Fast Food Restaurants'
  end

  def test_where
    assert_equal MCC.where(irs_reportable: 'Yes').first.mcc, '0742'
    assert_equal MCC.where(irs_reportable: 'Yes').count, 810
  end
end

class MCC::CodeTest < Minitest::Test
  def setup
    @code = MCC::Code.new(MCC._load_data.first)
  end

  def test_attrs
    MCC::Code::ATTRS.each do |attr|
      assert @code.send(attr)
    end
  end
end