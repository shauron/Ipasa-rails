require 'spec_helper'

describe "properties/index" do
  before(:each) do
    assign(:properties, [
      stub_model(Property,
        :nombre => "Nombre",
        :num_int => "",
        :num_ext => "",
        :direccion => "MyText",
        :google => "Google",
        :status_renta => false,
        :status_oferta => false,
        :comentario => "MyText",
        :type_id => 1,
        :locality_id => 2,
        :precio => 1.5
      ),
      stub_model(Property,
        :nombre => "Nombre",
        :num_int => "",
        :num_ext => "",
        :direccion => "MyText",
        :google => "Google",
        :status_renta => false,
        :status_oferta => false,
        :comentario => "MyText",
        :type_id => 1,
        :locality_id => 2,
        :precio => 1.5
      )
    ])
  end

  it "renders a list of properties" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Google".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
