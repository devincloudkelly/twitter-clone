class ApplicationController < ActionController::Base
include SessionsHelper

    def hello
        render text: "hello, world!"
    end
end
