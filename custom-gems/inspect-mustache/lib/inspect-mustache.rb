require "inspect-mustache/version"
module Sprockets
  module Inspect
    class Engine < Rails::Engine
    end
    module Mustache
      module Template
        class Processor < Tilt::Template

          def prepare
          end

          def evaluate(scope, locals, &block)
                 filename=(scope.pathname.to_s.split /\//).last
                 parts=(scope.logical_path.split /\//)
                 parts.pop
                 parts.push filename
                 relative_path=parts.join "/"
                "<inspect class='inspect' data-path='#{scope.logical_path}'>#{data}</inspect>"
          end
        end
      end

    end
  end
  register_engine '.inspect', ::Sprockets::Inspect::Mustache::Template::Processor
end
