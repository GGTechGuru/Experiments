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

    _opts = nil
    _values = nil
    _unsavedValues = nil
    _transientValues = nil
    _retrieveOptions = nil

    ######################

    def _construct( id = nil, opts = nil )
      this._opts = opts ? opts : Util.newRequestOptions()  # Add
    end # _construct

    ######################

  end # class StripeObject

end # module Stripe
include Stripe

s = StripeObject.new

puts s.class.to_s
