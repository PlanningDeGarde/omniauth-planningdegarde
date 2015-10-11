require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Planningdegarde < OmniAuth::Strategies::OAuth2
      option :name, 'planningdegarde'

      option :provider_ignores_state, true

      option :client_options, {
        site: 'https://app.planning-de-garde.fr/',
        authorize_url: '/oauth/authorize'
      }

      uid { raw_info['id'] }

      info do
        {
          email: raw_info['email'],
          first_name: raw_info['first_name'],
          last_name: raw_info['last_name']
        }
      end

      def raw_info

        @raw_info ||= access_token.get('https://api.planning-de-garde.fr/v2/me.json').parsed
      end
    end
  end
end
