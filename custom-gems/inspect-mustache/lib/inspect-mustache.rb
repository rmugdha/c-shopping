require "inspect-mustache/version"
module Sprockets
  module Inspect
    module Mustache
      module Template
        class Processor < Tilt::Template
          include ActionView::Helpers::JavaScriptHelper

          def self.default_mime_type
            'application/javascript'
          end

          def prepare
          end

          def evaluate(scope, locals, &block)
            "<inspect class='inspect active' data-path='#{scope.logical_path}'>#{data}</inspect>"
          end
        end
      end

    end
  end
  register_engine '.inspect', ::Sprockets::Inspect::Mustache::Template::Processor
end
