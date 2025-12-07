module RailsCms
  mattr_accessor :config, default: ActiveSupport::OrderedOptions.new

  config.water_mark = false

end
