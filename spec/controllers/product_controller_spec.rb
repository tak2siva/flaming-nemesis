require 'rails_helper'

RSpec.describe ProductsController, :type => :controller do
	describe "GET #index" do
		it "responds sucessfully" do
			get :index
			expect(response).to be_success
			expect(response).to have_http_status(200)
		end

		it "loads the data correctly" do
			product1 = Product.create!(:name=>"Nexus 5", :description => "Best android smartphone", :price=>"$399.99")
			product2 = Product.create!(:name=>"iphone 5s", :description => "Most popular mobile in world", :price=>"$499.99")
			get :index

			expect(assigns(:products)).to match_array([product1, product2])
		end	
	end
end
