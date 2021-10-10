class BookController < ApplicationController
    def index
        @book=Book.all
    end
    
    def list
    @book=Book.all
    end

    def show
          id = params[:format]
        @book = Book.find(id)
    end
    def new 
        @book = Book.new
    end
    def create
        @book = Book.new(book_params)
        if @book.save 
            flash[:success]="Book added successfully"
            redirect_to book_list_path
        else  
            render :new
        end
    end
    def edit 
        id = params[:format]
        @book = Book.find(id)
    end
    def update
        @book =Book.find_by(params[:id])
          @book.update(book_params)
        redirect_to book_list_path
    end
    def destroy
        id = params[:format]
        @book = Book.find(id)
        @book.destroy
        redirect_to book_list_path
    end
    private
    def book_params
        params.require(:book).permit(:title,:author_name,:subject_code,{image: []})
    end

    
end
