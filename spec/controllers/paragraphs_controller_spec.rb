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

describe ParagraphsController do

  # This should return the minimal set of attributes required to create a valid
  # Paragraph. As you add validations to Paragraph, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "title_id" => "1" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ParagraphsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all paragraphs as @paragraphs" do
      paragraph = Paragraph.create! valid_attributes
      get :index, {}, valid_session
      assigns(:paragraphs).should eq([paragraph])
    end
  end

  describe "GET show" do
    it "assigns the requested paragraph as @paragraph" do
      paragraph = Paragraph.create! valid_attributes
      get :show, {:id => paragraph.to_param}, valid_session
      assigns(:paragraph).should eq(paragraph)
    end
  end

  describe "GET new" do
    it "assigns a new paragraph as @paragraph" do
      get :new, {}, valid_session
      assigns(:paragraph).should be_a_new(Paragraph)
    end
  end

  describe "GET edit" do
    it "assigns the requested paragraph as @paragraph" do
      paragraph = Paragraph.create! valid_attributes
      get :edit, {:id => paragraph.to_param}, valid_session
      assigns(:paragraph).should eq(paragraph)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Paragraph" do
        expect {
          post :create, {:paragraph => valid_attributes}, valid_session
        }.to change(Paragraph, :count).by(1)
      end

      it "assigns a newly created paragraph as @paragraph" do
        post :create, {:paragraph => valid_attributes}, valid_session
        assigns(:paragraph).should be_a(Paragraph)
        assigns(:paragraph).should be_persisted
      end

      it "redirects to the created paragraph" do
        post :create, {:paragraph => valid_attributes}, valid_session
        response.should redirect_to(Paragraph.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved paragraph as @paragraph" do
        # Trigger the behavior that occurs when invalid params are submitted
        Paragraph.any_instance.stub(:save).and_return(false)
        post :create, {:paragraph => { "title_id" => "invalid value" }}, valid_session
        assigns(:paragraph).should be_a_new(Paragraph)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Paragraph.any_instance.stub(:save).and_return(false)
        post :create, {:paragraph => { "title_id" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested paragraph" do
        paragraph = Paragraph.create! valid_attributes
        # Assuming there are no other paragraphs in the database, this
        # specifies that the Paragraph created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Paragraph.any_instance.should_receive(:update_attributes).with({ "title_id" => "1" })
        put :update, {:id => paragraph.to_param, :paragraph => { "title_id" => "1" }}, valid_session
      end

      it "assigns the requested paragraph as @paragraph" do
        paragraph = Paragraph.create! valid_attributes
        put :update, {:id => paragraph.to_param, :paragraph => valid_attributes}, valid_session
        assigns(:paragraph).should eq(paragraph)
      end

      it "redirects to the paragraph" do
        paragraph = Paragraph.create! valid_attributes
        put :update, {:id => paragraph.to_param, :paragraph => valid_attributes}, valid_session
        response.should redirect_to(paragraph)
      end
    end

    describe "with invalid params" do
      it "assigns the paragraph as @paragraph" do
        paragraph = Paragraph.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Paragraph.any_instance.stub(:save).and_return(false)
        put :update, {:id => paragraph.to_param, :paragraph => { "title_id" => "invalid value" }}, valid_session
        assigns(:paragraph).should eq(paragraph)
      end

      it "re-renders the 'edit' template" do
        paragraph = Paragraph.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Paragraph.any_instance.stub(:save).and_return(false)
        put :update, {:id => paragraph.to_param, :paragraph => { "title_id" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested paragraph" do
      paragraph = Paragraph.create! valid_attributes
      expect {
        delete :destroy, {:id => paragraph.to_param}, valid_session
      }.to change(Paragraph, :count).by(-1)
    end

    it "redirects to the paragraphs list" do
      paragraph = Paragraph.create! valid_attributes
      delete :destroy, {:id => paragraph.to_param}, valid_session
      response.should redirect_to(paragraphs_url)
    end
  end

end
