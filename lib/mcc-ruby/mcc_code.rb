class MCC::Code
  ATTRS = %w(mcc edited_description combined_description usda_description irs_description irs_reportable)

  ATTRS.each do |attr|
    define_method attr do 
      instance_variable_get("@#{attr}")
    end
  end

  def initialize(_data)
    ATTRS.each do |attr|
      instance_variable_set("@#{attr}", _data[attr])
    end
  end
end