require 'spec_helper'

describe "LayoutLnks" do
  describe "GET /layout_lnks" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get layout_lnks_index_path
      response.status.should be(200)
    end
  end
end
