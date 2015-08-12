require 'omniauth-oauth2'
require 'json'

module OmniAuth
  module Strategies
    class HelloSign < OmniAuth::Strategies::OAuth2
      # Strategy name
      option :name, "hellosign"

      # Options being passed to initialize client from the OAuth Gem.
      # Reference: https://github.com/oauth-xx/oauth-ruby
      option :client_options, {
        site: "https://www.hellosign.com",
        authorize_url: "/oauth/authorize",
        token_url: "/oauth/token"
      }

      # Called after authentication has succeeded.
      uid {
        raw_info['account_id']
      }

      info do
        {
          email: raw_info['email_address']        }
      end

      extra do
        {
          'raw_info' => raw_info
        }
      end

      def raw_info
        raw_info = access_token.get('/v3/account')

        data = raw_info.read_body
        data = (data ? JSON.parse(data) : {} )
        data['account'] || {}
      end
    end
  end
end
OmniAuth.config.add_camelization "hellosign", "HelloSign"
