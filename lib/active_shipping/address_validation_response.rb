module ActiveShipping
  # The `AddressValidationResponse` is returned by the {ActiveShipping::Carrier#validate_address}
  #
  # @note Some carriers provide more information that others, so not all attributes
  #   will be set, depending on what carrier you are using.
  #
  # @attribute candidates
  #   @return [ActiveShipping::Location]
  class AddressValidationResponse < Response

    attr_reader :candidates, :valid

    def initialize(success, message, params = {}, options = {})
      @valid = options[:valid]
      @candidates = Array(options[:candidates])
      super
    end

    def is_valid?
      @valid
    end

    alias_method :valid?, :is_valid?
  end
end
