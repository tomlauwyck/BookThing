require 'spec_helper'

describe BooksController do

  describe "GET 'new'" do
    it "should be successful" do
      get 'new'
      response.should be_success
    end
  end
  
  describe "POST 'create'" do
    
    describe "failure" do
      
      before(:each) do
        @attr = { :title => "", :author => "" }
      end
      
      it "should not create a book" do
        lambda do
          post :create, :book => @attr
        end.should_not change(Book, :count)
      end
      
      it "should render the 'new' page" do
        post :create, :book => @attr
        response.should render_template('new')
      end
    end
    
    describe "success" do
      
      before(:each) do
        @attr = { :title => "The catcher in the rye", :author => "J. D. Salinger"}
      end
      
      it "should create a book" do
        lambda do
          post :create, :book => @attr
        end.should change(Book, :count).by(1)
      end
      
      it "should redirect to the book show page" do
        post :create, :book => @attr
        response.should redirect_to(book_path(assigns(:book)))
      end
    end
  end
end
