require 'spec_helper'

describe Core do
  before(:each) do
    ItemType.setup_item_type
  end
  
  it "should have 2 item types" do
    ItemType.count.should == 2 
  end
  
  it "should be allowed to create core" do
    @core = Core.create_object(
      :core_sku => "Awesome sku"
    )
    
    @core.should be_valid 
    
  end
end
