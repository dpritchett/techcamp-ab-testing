class SplitTestsController < ApplicationController
  def index
    @test_name   = params[:test_name]
    @test_values = self.class.tests[@test_name]
  end

  def self.tests
    {
      "i_like"      => %w[apples bananas],
      "i_do_not_like" => %w[apples bananas],
    }
  end
end
