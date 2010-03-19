require 'test/unit'
require File.join(File.dirname(__FILE__), '..', 'lib', 'mini_fb')

class MiniFBTests < Test::Unit::TestCase


    def setup
    end

    def teardown

    end

    # Test signature verification.
    def test_signature
        
    end
    
    def test_verify_session_signature_with_valid_signature
      arguments = {
        "uid" => "5526183",
        "session_key" => "3.UJ45fXjXdhrgWKe91GE3hA__.3600.1268074800-5526183",
        "secret" => "XkN2MNB_O3u2VWyk1EYWOw__",
        "base_domain" => "fbrell.com",
        "expires" => "1268074800",
        "sig" => "785ae59cf41f6415a0a0710c7799c122"
      }
      secret_key = 'YOUR APP SECRET'
      assert_equal true, MiniFB.verify_session_signature(secret_key, arguments)
    end

    def test_verify_session_signature_with_invalid_signature
      arguments = {
        "uid" => "5526183",
        "session_key" => "3.UJ45fXjXdhrgWKe91GE3hA__.3600.1268074800-5526183",
        "secret" => "XkN2MNB_O3u2VWyk1EYWOw__",
        "base_domain" => "fbrell.com",
        "expires" => "1268074800",
        "sig" => "invalid-signature"
      }
      secret_key = 'YOUR APP SECRET'
      assert_equal false, MiniFB.verify_session_signature(secret_key, arguments)
    end


    def test_basic_calls

    end

    def test_session

    end

    def test_photos
        
    end

end