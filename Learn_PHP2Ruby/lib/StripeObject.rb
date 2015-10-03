# Gerard Anthony Gold
# Translation from PHP -> other (Ruby)
# 20151003: In process
#

module Stripe

  require 'json'
  require 'set'

  class StripeObject

    @@permanentAttributes = nil

    @@nestedUpdatableAttributes = nil

    def initialize()

      @@permanentAttributes = Set.new( [ '_opts', 'id' ] )

      @@nestedUpdatableAttributes = Set.new(
        [ 'metadata', 'legal_entity', 'address', 'dob', 'transfer_schedule',
           'verification', 'tos_acceptance', 'personal_address',
           'additional_owners', 0, 1, 2, 3, 4
        ]
      )

    end # initialize()

    ######################

  end # class StripeObject

end # module Stripe
include Stripe

s = StripeObject.new

puts s.class.to_s
