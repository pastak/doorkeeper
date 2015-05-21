module Doorkeeper
  module Models
    module Mongoid4
      module Scopes
        extend ActiveSupport::Concern

        included do
          field :scopes, type: String, default: Doorkeeper.configuration.default_scopes
        end

        def scopes=(value)
          write_attribute :scopes, value if value.present?
        end
      end
    end
  end
end
