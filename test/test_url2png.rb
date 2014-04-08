require 'test/unit'
require 'url2png'

class Url2pngScreenshotTest < Test::Unit::TestCase

  def test_token_is_valid
    options = {
      url: 'https://google.com',
      viewport: '1024x1024',
      apikey: 'TEST-APIKEY',
      secret: 'TEST-SECRET'
    }
    assert_equal 'd1ba2d5725dcdedaf4a3e98e0ba9c392', Url2png::Screenshot.new(options).token
  end

  def test_url_is_well_formed
    options = {
      url: 'https://google.com',
      viewport: '1024x1024',
      apikey: 'TEST-APIKEY',
      secret: 'TEST-SECRET'
    }
    assert_equal 'http://api.url2png.com/v6/TEST-APIKEY/d1ba2d5725dcdedaf4a3e98e0ba9c392/png/?url=https%3A%2F%2Fgoogle.com&viewport=1024x1024', Url2png::Screenshot.new(options).url
  end

  def test_to_s_returns_url
    options = {
      url: 'https://google.com',
      viewport: '1024x1024',
      apikey: 'TEST-APIKEY',
      secret: 'TEST-SECRET'
    }
    assert_equal 'http://api.url2png.com/v6/TEST-APIKEY/d1ba2d5725dcdedaf4a3e98e0ba9c392/png/?url=https%3A%2F%2Fgoogle.com&viewport=1024x1024', Url2png::Screenshot.new(options).to_s
  end

end
