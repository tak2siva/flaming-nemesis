require 'rails_helper'

RSpec.describe Product, :type => :model do
  describe "#Init product" do
	  subject { product }
	  let(:product) {Product.create!(:name=>"test_product", :description=>"test description", :price=>"$99.99")} 

	  context "should have name" do
		  it { should have_name }
	  end

	  context "should have price" do
		  it { should have_price }
	  end

	  context "should have description" do
		  it { should have_description }
	  end
  end
end
