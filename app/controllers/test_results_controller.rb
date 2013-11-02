class TestResultsController < ApplicationController
  protect_from_forgery with: :exception

  def index
    @results = TestResult.all.order("updated_at desc").limit(50)
  end

  def show
    render json: TestResult.new
  end

  def create
    Rails.logger.debug params
    tr = TestResult.create(
      {
        params:      cleaned_params,
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

  private
  def cleaned_params
    params.reject { |(k,v)| k == 'authenticity_token' }
  end
end
