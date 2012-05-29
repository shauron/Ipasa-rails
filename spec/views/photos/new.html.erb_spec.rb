require 'spec_helper'

describe "photos/new" do
  before(:each) do
    assign(:photo, stub_model(Photo,
      :property_id => 1,
      :descripcion => "MyText",
      :ruta => "MyText"
    ).as_new_record)
  end

  it "renders new photo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => photos_path, :method => "post" do
      assert_select "input#photo_property_id", :name => "photo[property_id]"
      assert_select "textarea#photo_descripcion", :name => "photo[descripcion]"
      assert_select "textarea#photo_ruta", :name => "photo[ruta]"
    end
  end
end
