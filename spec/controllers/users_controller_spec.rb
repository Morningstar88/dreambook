require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  before(:all) do
    Rails.application.load_seed if User.count == 0
  end

  let(:user) { User.first }

  context 'when user is logged in' do

    before do
      sign_in(user)
    end

    describe "GET #index" do
      it 'shows the users index page' do
          get :index
          expect(response).to have_http_status(:success)
      end
    end

  end

  context 'when user is NOT logged in' do

    describe "GET #index" do
      it 'rediects to login' do
          get :index
          expect(response).to redirect_to(new_user_session_path)
      end
    end

  end

end