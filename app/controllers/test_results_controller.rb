class TestResultsController < ApplicationController
  def index
    results = TestResult.all.order("updated_at desc").limit(50)
    render json: results
  end

  def show
    render json: TestResult.new
  end

  def create
    Rails.logger.debug params
    tr = TestResult.create(
      {
        params:      params,
        test_name:   params[:test_name],
        test_value:  params[:test_value],
        request_url: params[:request_url],
        user_agent:  request.user_agent,
        ip_address:  request.remote_ip,
      }
    )

    if tr.valid?
      render json: tr
    else
      render json: { errors: tr.errors }, status: 422
    end
  end
end
