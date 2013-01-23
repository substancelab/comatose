
module Comatose
  class Engine < Rails::Engine
    # Mimic old vendored plugin behavior, marc_display/lib is autoloaded.
    config.autoload_paths << File.expand_path("..", __FILE__)
  end
  # DEPRECATED
  # Loads extensions from Rails.root/lib/comatose/*.rb
  def self.load_extensions
    Dir[File.join(Rails.root.to_s, 'lib', 'comatose', '*.rb')].each do |path|
      require "comatose/#{File.basename(path)}"
    end
  end

end

require 'acts_as_versioned'
require 'redcloth' unless defined?(RedCloth)
require 'liquid' unless defined?(Liquid)

require 'support/class_options'
require 'text_filters'

require 'comatose/configuration'
require 'comatose/comatose_drop'
require 'comatose/processing_context'
require 'comatose/page_wrapper'
require 'comatose/version'

require 'support/inline_rendering'
require 'support/route_mapper'

#require 'dispatcher' unless defined?(::Dispatcher)
#ActionController::Dispatcher.to_prepare is deprecated. " <<
#          "Please use config.to_prepare instead
ActionDispatch::Callbacks.to_prepare  do
    Comatose.config.after_setup.call
end
