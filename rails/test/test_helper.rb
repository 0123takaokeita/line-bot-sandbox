ENV["RAILS_ENV"] ||= "test"
require_relative "../config/environment"
require "rails/test_help"

module ActiveSupport
  class TestCase
    include FactoryBot::Syntax::Methods

    # Run tests in parallel with specified workers
    parallelize(workers: :number_of_processors)

    # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
    fixtures :all

    # Add more helper methods to be used by all tests here...

    # test result formater
    Minitest::Reporters.use! [
      Minitest::Reporters::SpecReporter.new,
      Minitest::Reporters::MeanTimeReporter.new(show_progress: false) # => Produces a report summary showing the slowest running tests
    ]
  end
end
