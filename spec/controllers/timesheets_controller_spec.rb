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

describe TimesheetsController do

  # This should return the minimal set of attributes required to create a valid
  # Timesheet. As you add validations to Timesheet, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "date" => "2014-10-01" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # TimesheetsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all timesheets as @timesheets" do
      timesheet = Timesheet.create! valid_attributes
      get :index, {}, valid_session
      assigns(:timesheets).should eq([timesheet])
    end
  end

  describe "GET show" do
    it "assigns the requested timesheet as @timesheet" do
      timesheet = Timesheet.create! valid_attributes
      get :show, {:id => timesheet.to_param}, valid_session
      assigns(:timesheet).should eq(timesheet)
    end
  end

  describe "GET new" do
    it "assigns a new timesheet as @timesheet" do
      get :new, {}, valid_session
      assigns(:timesheet).should be_a_new(Timesheet)
    end
  end

  describe "GET edit" do
    it "assigns the requested timesheet as @timesheet" do
      timesheet = Timesheet.create! valid_attributes
      get :edit, {:id => timesheet.to_param}, valid_session
      assigns(:timesheet).should eq(timesheet)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Timesheet" do
        expect {
          post :create, {:timesheet => valid_attributes}, valid_session
        }.to change(Timesheet, :count).by(1)
      end

      it "assigns a newly created timesheet as @timesheet" do
        post :create, {:timesheet => valid_attributes}, valid_session
        assigns(:timesheet).should be_a(Timesheet)
        assigns(:timesheet).should be_persisted
      end

      it "redirects to the created timesheet" do
        post :create, {:timesheet => valid_attributes}, valid_session
        response.should redirect_to(Timesheet.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved timesheet as @timesheet" do
        # Trigger the behavior that occurs when invalid params are submitted
        Timesheet.any_instance.stub(:save).and_return(false)
        post :create, {:timesheet => { "date" => "invalid value" }}, valid_session
        assigns(:timesheet).should be_a_new(Timesheet)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Timesheet.any_instance.stub(:save).and_return(false)
        post :create, {:timesheet => { "date" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested timesheet" do
        timesheet = Timesheet.create! valid_attributes
        # Assuming there are no other timesheets in the database, this
        # specifies that the Timesheet created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Timesheet.any_instance.should_receive(:update).with({ "date" => "2014-10-01" })
        put :update, {:id => timesheet.to_param, :timesheet => { "date" => "2014-10-01" }}, valid_session
      end

      it "assigns the requested timesheet as @timesheet" do
        timesheet = Timesheet.create! valid_attributes
        put :update, {:id => timesheet.to_param, :timesheet => valid_attributes}, valid_session
        assigns(:timesheet).should eq(timesheet)
      end

      it "redirects to the timesheet" do
        timesheet = Timesheet.create! valid_attributes
        put :update, {:id => timesheet.to_param, :timesheet => valid_attributes}, valid_session
        response.should redirect_to(timesheet)
      end
    end

    describe "with invalid params" do
      it "assigns the timesheet as @timesheet" do
        timesheet = Timesheet.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Timesheet.any_instance.stub(:save).and_return(false)
        put :update, {:id => timesheet.to_param, :timesheet => { "date" => "invalid value" }}, valid_session
        assigns(:timesheet).should eq(timesheet)
      end

      it "re-renders the 'edit' template" do
        timesheet = Timesheet.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Timesheet.any_instance.stub(:save).and_return(false)
        put :update, {:id => timesheet.to_param, :timesheet => { "date" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested timesheet" do
      timesheet = Timesheet.create! valid_attributes
      expect {
        delete :destroy, {:id => timesheet.to_param}, valid_session
      }.to change(Timesheet, :count).by(-1)
    end

    it "redirects to the timesheets list" do
      timesheet = Timesheet.create! valid_attributes
      delete :destroy, {:id => timesheet.to_param}, valid_session
      response.should redirect_to(timesheets_url)
    end
  end

end
