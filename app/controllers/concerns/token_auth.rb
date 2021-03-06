module TokenAuth
  extend ActiveSupport::Concern

  included do
    protect_from_forgery with: :null_session
    before_action :authenticate_request
    skip_before_action :authenticate
  end

  private

  def authenticate_request
    authenticate_token || unauthorized
  end

  def authenticate_token
    authenticate_with_http_token do |key, _|
      @token = Token.find_by(key: key)
      @token && (@token.does_not_expire || @token.expires_at > Time.now)
    end
  end

  def current_user
    @current_user ||= @token.user if @token
  end

  def unauthorized
    render json: { errors: ['Bad credentials'] }, status: 401
  end
end
