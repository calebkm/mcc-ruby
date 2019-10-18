require 'yaml'

class Mcc
  def self.all
    @@_all ||= YAML::load_file(File.join(__dir__, 'mcc_codes.yaml'))
  end

  def self.code(_code)
    all.find { |a| a['mcc'] == _code.to_s }
  end

  def self.where(_attr)
    all.find { |a| a[_attr.keys.first.to_s] == _attr.values.first.to_s }
  end
end