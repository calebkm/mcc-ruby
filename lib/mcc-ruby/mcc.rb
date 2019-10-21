require 'yaml'

class MCC
  def self.all
    _load_data.map { |data| MCC::Code.new(data) }
  end

  def self.code(_code)
    all.find { |mcc| mcc.send('mcc') == _code.to_s }
  end

  def self.where(_attr)
    all.select { |mcc| mcc.send(_attr.keys.first.to_s) == _attr.values.first.to_s }
  end

  def self._load_data
    @@_load ||= YAML::load_file(File.join(__dir__, 'mcc_codes.yaml'))
  end
end