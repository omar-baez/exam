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

describe MicripostsController do

  # This should return the minimal set of attributes required to create a valid
  # Micripost. As you add validations to Micripost, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "box_id" => "1" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # MicripostsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all micriposts as @micriposts" do
      micripost = Micripost.create! valid_attributes
      get :index, {}, valid_session
      assigns(:micriposts).should eq([micripost])
    end
  end

  describe "GET show" do
    it "assigns the requested micripost as @micripost" do
      micripost = Micripost.create! valid_attributes
      get :show, {:id => micripost.to_param}, valid_session
      assigns(:micripost).should eq(micripost)
    end
  end

  describe "GET new" do
    it "assigns a new micripost as @micripost" do
      get :new, {}, valid_session
      assigns(:micripost).should be_a_new(Micripost)
    end
  end

  describe "GET edit" do
    it "assigns the requested micripost as @micripost" do
      micripost = Micripost.create! valid_attributes
      get :edit, {:id => micripost.to_param}, valid_session
      assigns(:micripost).should eq(micripost)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Micripost" do
        expect {
          post :create, {:micripost => valid_attributes}, valid_session
        }.to change(Micripost, :count).by(1)
      end

      it "assigns a newly created micripost as @micripost" do
        post :create, {:micripost => valid_attributes}, valid_session
        assigns(:micripost).should be_a(Micripost)
        assigns(:micripost).should be_persisted
      end

      it "redirects to the created micripost" do
        post :create, {:micripost => valid_attributes}, valid_session
        response.should redirect_to(Micripost.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved micripost as @micripost" do
        # Trigger the behavior that occurs when invalid params are submitted
        Micripost.any_instance.stub(:save).and_return(false)
        post :create, {:micripost => { "box_id" => "invalid value" }}, valid_session
        assigns(:micripost).should be_a_new(Micripost)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Micripost.any_instance.stub(:save).and_return(false)
        post :create, {:micripost => { "box_id" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested micripost" do
        micripost = Micripost.create! valid_attributes
        # Assuming there are no other micriposts in the database, this
        # specifies that the Micripost created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Micripost.any_instance.should_receive(:update).with({ "box_id" => "1" })
        put :update, {:id => micripost.to_param, :micripost => { "box_id" => "1" }}, valid_session
      end

      it "assigns the requested micripost as @micripost" do
        micripost = Micripost.create! valid_attributes
        put :update, {:id => micripost.to_param, :micripost => valid_attributes}, valid_session
        assigns(:micripost).should eq(micripost)
      end

      it "redirects to the micripost" do
        micripost = Micripost.create! valid_attributes
        put :update, {:id => micripost.to_param, :micripost => valid_attributes}, valid_session
        response.should redirect_to(micripost)
      end
    end

    describe "with invalid params" do
      it "assigns the micripost as @micripost" do
        micripost = Micripost.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Micripost.any_instance.stub(:save).and_return(false)
        put :update, {:id => micripost.to_param, :micripost => { "box_id" => "invalid value" }}, valid_session
        assigns(:micripost).should eq(micripost)
      end

      it "re-renders the 'edit' template" do
        micripost = Micripost.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Micripost.any_instance.stub(:save).and_return(false)
        put :update, {:id => micripost.to_param, :micripost => { "box_id" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested micripost" do
      micripost = Micripost.create! valid_attributes
      expect {
        delete :destroy, {:id => micripost.to_param}, valid_session
      }.to change(Micripost, :count).by(-1)
    end

    it "redirects to the micriposts list" do
      micripost = Micripost.create! valid_attributes
      delete :destroy, {:id => micripost.to_param}, valid_session
      response.should redirect_to(micriposts_url)
    end
  end

end
