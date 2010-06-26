class AccessKey < ActiveRecord::Base
  
  oauth do
    provider 'Facebook' do
      key    '5c3c0bd3a3d6734a5db2913bf06d70aa'
      secret '1085343540d0affc644752cf5d9164a2'
      site   'https://graph.facebook.com'
      authorize_path    '/oauth/authorize'
      access_token_path '/oauth/access_token'
    end
    provider 'LinkedIn' do
      key    'Xquru0KzsRb_pne41emhN87UYG5OBZ73Os20Gi7rvvKaJegLZadt8dY6LZcZbqBb'
      secret 'Zsoe8IW-tYJVWVitn_ceS_zAStGq8lsDj6tTo6UkrQrNOfTrKKGLFebZrH5ILtAB'
      site   'https://api.linkedin.com'
      authorize_path     '/uas/oauth/authorize'
      access_token_path  '/uas/oauth/accessToken'
      request_token_path '/uas/oauth/requestToken'
    end
  end
  
end
