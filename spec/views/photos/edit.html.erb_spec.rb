require 'spec_helper'

describe "photos/edit" do
  before(:each) do
    @photo = assign(:photo, stub_model(Photo,
      :property_id => 1,
      :descripcion => "MyText",
      :ruta => "MyText"
    ))
  end

  it "renders the edit photo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => photos_path(@photo), :method => "post" do
      assert_select "input#photo_property_id", :name => "photo[property_id]"
      assert_select "textarea#photo_descripcion", :name => "photo[descripcion]"
      assert_select "textarea#photo_ruta", :name => "photo[ruta]"
    end
  end
end
