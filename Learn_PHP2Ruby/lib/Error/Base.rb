# Gerard Gold
# 20151004 In-process
#

require_relative '../Stripe'

module Stripe::Error

  require 'abstraction'

  class Base < StandardError
    abstract

    def initialize(
      message,
      httpStatus = nil,
      httpBody = nil,
      jsonBody = nil,
      httpHeaders = nil
      )

      super(message)

      self.httpStatus = httpStatus
      self.httpBody = httpBody
      self.jsonBody = jsonBody
      self.httpHeaders = httpHeaders
      self.requestId = nil
        
      if ( httpHeaders && httpHeaders['Request-Id'] )
        self.requestId = httpHeaders['Request-Id']
      end

    end # initialize()
  end

end # module Stripe::Error
include Stripe::Error
