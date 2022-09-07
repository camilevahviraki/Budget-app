require 'rails_helper'

RSpec.describe 'Foods', type: :request do
  include Devise::Test::IntegrationHelpers
  before do
    @user = User.create(name: 'Kelvin', password: 'password', email: 'kelybush@gmail.com')
    @food = @user.groups.create(name: 'Chapati', icon: 'kg')
    sign_in @user
  end

  describe 'GET /index' do
    it 'returns http success' do
      get categories_path
      expect(response).to have_http_status(:success)
    end
  end
end
