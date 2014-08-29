require 'rails_helper'

#   CONTROLLER TEST:
#    -> stub the views, but template must exist
#    -> simulate one HTTP request
#    -> captures info about:
#       -> response
#       -> template rendered
#       -> redirect
#       -> cookies 
#

RSpec.describe WidgetController, type: :controller do

  describe 'GET :index' do
    before { get :index }

    it "has a 200 status" do
      expect(response).to be_success
    end

    it "renders index template" do
      expect(response).to render_template('index')
    end

    it "has no response body" do
      expect(response.body).to eq('') 
    end

  end

  describe 'Get :helloworld' do

    context "with views rendered" do
      render_views
      before { get :helloworld }

      it "has a 200 status" do
        expect(response).to be_success
      end

      it "says 'Hello World!'" do
        expect(response.body).to match(/Hello World!/)
      end
    end
  end

end
