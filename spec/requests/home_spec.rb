require 'rails_helper'

describe "Home" do

  describe "GET /" do
    it "render index page" do
      get root_path
      expect(response).to have_http_status 200
      expect(response).to render_template :index
    end
  end
end
