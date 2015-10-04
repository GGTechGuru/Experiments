# Gerard Gold
# 20151004
#

module Stripe

  class Stripe

    def getApiKey; @@apiKey; end
    def setApiKey(a); @@apiKey=a; end

    @@apiBase = 'https://api.stripe.com'
    def apiBase; @@apiBase; end
    def apiBase=(a); @@apiBase=a; end

    @@apiUploadBase = 'https://uploads.stripe.com'
    def apiUploadBase; @@apiUploadBase; end
    def apiUploadBase=(a); @@apiUploadBase=a; end

    apiVersion = nil
    def getApiVersion; @@apiVersion; end
    def setApiVersion(a); @@apiVersion=a; end

    @@verifySslCerts = true
    def getVerifySslCerts; @@verifySslCerts; end
    def setVerifySslCerts(a); @@verifySslCerts=a; end

    def VERSION; '3.4.0'; end

  end # class Stripe

end # module Stripe
