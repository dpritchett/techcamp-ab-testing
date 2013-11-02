class SplitTestsController < ApplicationController
  def index
    @test_name   = params[:test_name] || tests.keys.sample
    @test_values = tests[@test_name]
  end

  def tests
    {
      "i_like"        => %w[apples bananas],
      "i_do_not_like" => %w[apples bananas],
    }
  end
end
