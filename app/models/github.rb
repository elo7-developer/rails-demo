require 'open-uri'
require 'openssl'

class Github
  API_URL = 'https://api.github.com'

  def self.repos(user)
    begin
      f = open(API_URL + '/users/' + user + '/repos',
        :ssl_verify_mode => OpenSSL::SSL::VERIFY_NONE) # fix for OpenSSL issues
      ActiveSupport::JSON.decode(f)
    rescue OpenURI::HTTPError
    end
  end

  def self.commits(owner, repo)
    begin
      f = open(API_URL + '/repos/' + owner + '/' + repo + '/commits',
        :ssl_verify_mode => OpenSSL::SSL::VERIFY_NONE)
      ActiveSupport::JSON.decode(f)
    rescue OpenURI::HTTPError
    end
  end
end