require 'spec_helper'

describe "properties/show" do
  before(:each) do
    @property = assign(:property, stub_model(Property,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nombre/)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(/MyText/)
    rendered.should match(/Google/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/MyText/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/1.5/)
  end
end
