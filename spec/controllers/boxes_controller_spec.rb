require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe BoxesController do

  # This should return the minimal set of attributes required to create a valid
  # Box. As you add validations to Box, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "box_id" => "1" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # BoxesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all boxes as @boxes" do
      box = Box.create! valid_attributes
      get :index, {}, valid_session
      assigns(:boxes).should eq([box])
    end
  end

  describe "GET show" do
    it "assigns the requested box as @box" do
      box = Box.create! valid_attributes
      get :show, {:id => box.to_param}, valid_session
      assigns(:box).should eq(box)
    end
  end

  describe "GET new" do
    it "assigns a new box as @box" do
      get :new, {}, valid_session
      assigns(:box).should be_a_new(Box)
    end
  end

  describe "GET edit" do
    it "assigns the requested box as @box" do
      box = Box.create! valid_attributes
      get :edit, {:id => box.to_param}, valid_session
      assigns(:box).should eq(box)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Box" do
        expect {
          post :create, {:box => valid_attributes}, valid_session
        }.to change(Box, :count).by(1)
      end

      it "assigns a newly created box as @box" do
        post :create, {:box => valid_attributes}, valid_session
        assigns(:box).should be_a(Box)
        assigns(:box).should be_persisted
      end

      it "redirects to the created box" do
        post :create, {:box => valid_attributes}, valid_session
        response.should redirect_to(Box.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved box as @box" do
        # Trigger the behavior that occurs when invalid params are submitted
        Box.any_instance.stub(:save).and_return(false)
        post :create, {:box => { "box_id" => "invalid value" }}, valid_session
        assigns(:box).should be_a_new(Box)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Box.any_instance.stub(:save).and_return(false)
        post :create, {:box => { "box_id" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested box" do
        box = Box.create! valid_attributes
        # Assuming there are no other boxes in the database, this
        # specifies that the Box created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Box.any_instance.should_receive(:update).with({ "box_id" => "1" })
        put :update, {:id => box.to_param, :box => { "box_id" => "1" }}, valid_session
      end

      it "assigns the requested box as @box" do
        box = Box.create! valid_attributes
        put :update, {:id => box.to_param, :box => valid_attributes}, valid_session
        assigns(:box).should eq(box)
      end

      it "redirects to the box" do
        box = Box.create! valid_attributes
        put :update, {:id => box.to_param, :box => valid_attributes}, valid_session
        response.should redirect_to(box)
      end
    end

    describe "with invalid params" do
      it "assigns the box as @box" do
        box = Box.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Box.any_instance.stub(:save).and_return(false)
        put :update, {:id => box.to_param, :box => { "box_id" => "invalid value" }}, valid_session
        assigns(:box).should eq(box)
      end

      it "re-renders the 'edit' template" do
        box = Box.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Box.any_instance.stub(:save).and_return(false)
        put :update, {:id => box.to_param, :box => { "box_id" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested box" do
      box = Box.create! valid_attributes
      expect {
        delete :destroy, {:id => box.to_param}, valid_session
      }.to change(Box, :count).by(-1)
    end

    it "redirects to the boxes list" do
      box = Box.create! valid_attributes
      delete :destroy, {:id => box.to_param}, valid_session
      response.should redirect_to(boxes_url)
    end
  end

end
