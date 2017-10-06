ENV["RAILS_ENV"] = "test"

require File.expand_path("../../config/environment", __FILE__)
require "rails/test_help"
require "minitest/rails"
require "minitest/reporters"

Minitest::Reporters.use! [Minitest::Reporters::SpecReporter.new, Minitest::Reporters::HtmlReporter.new]

# To add Capybara feature tests add `gem "minitest-rails-capybara"`
# to the test group in the Gemfile and uncomment the following:
# require "minitest/rails/capybara"

# Uncomment for awesome colorful output
require "minitest/pride"

class ActiveSupport
  class TestCase

    # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
    fixtures :all

    # Add more helper methods to be used by all tests here...

    def assert_authentication_failed
      assert_response :found
      assert_redirected_to new_user_session_path
    end

    def assert_authorization_failed
      assert_response :redirect
      assert_redirected_to root_path
    end

    def assert_save(object)
      if object.save
        assert true
      else
        debug_errors(object)
        assert false
      end
    end

    def debug(message)
      puts "============================================================================================================"
      puts "============================================================================================================"
      puts message
      puts "============================================================================================================"
      puts "============================================================================================================"
    end

    def debug_errors(object)
      if object.errors.size.zero?
        debug "No errors found"
        debug object.inspect
      elsif object.errors.size.positive? && object.errors.full_messages.size.positive?
        debug object.errors.full_messages
      else
        debug object.errors.inspect
      end
    end

  end
end

class ActionDispatch
  class IntegrationTest
    include Devise::Test::IntegrationHelpers
  end
end
