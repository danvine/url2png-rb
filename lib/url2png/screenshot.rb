module Url2png
  class Screenshot
    attr_reader :apikey, :secret, :query_string, :token, :options

    def initialize options

      @apikey = options[:apikey] || ENV['URL2PNG_APIKEY']
      @secret = options[:secret] || ENV['URL2PNG_SECRET']

      options.delete(:apikey) # we don't want these in the query string
      options.delete(:secret) # we don't want these in the query string
      @options = options

    end

    def token
      Digest::MD5.hexdigest(self.query_string + self.secret)
    end

    def query_string
      self.options.sort.map { |k,v| "#{CGI::escape(k.to_s)}=#{CGI::escape(v.to_s)}" }.join("&")
    end

    def url
      "http://api.url2png.com/v6/#{self.apikey}/#{self.token}/png/?#{self.query_string}"
    end

    def to_s
      self.url
    end

  end
end
