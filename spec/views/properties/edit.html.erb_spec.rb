require 'spec_helper'

describe "properties/edit" do
  before(:each) do
    @property = assign(:property, stub_model(Property,
      :nombre => "MyString",
      :num_int => "",
      :num_ext => "",
      :direccion => "MyText",
      :google => "MyString",
      :status_renta => false,
      :status_oferta => false,
      :comentario => "MyText",
      :type_id => 1,
      :locality_id => 1,
      :precio => 1.5
    ))
  end

  it "renders the edit property form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => properties_path(@property), :method => "post" do
      assert_select "input#property_nombre", :name => "property[nombre]"
      assert_select "input#property_num_int", :name => "property[num_int]"
      assert_select "input#property_num_ext", :name => "property[num_ext]"
      assert_select "textarea#property_direccion", :name => "property[direccion]"
      assert_select "input#property_google", :name => "property[google]"
      assert_select "input#property_status_renta", :name => "property[status_renta]"
      assert_select "input#property_status_oferta", :name => "property[status_oferta]"
      assert_select "textarea#property_comentario", :name => "property[comentario]"
      assert_select "input#property_type_id", :name => "property[type_id]"
      assert_select "input#property_locality_id", :name => "property[locality_id]"
      assert_select "input#property_precio", :name => "property[precio]"
    end
  end
end
