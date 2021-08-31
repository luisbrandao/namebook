#encoding: utf-8
class BooksController < ApplicationController
  before_action :set_book, only: %i[ show edit update destroy ]
  # GET /books
  # GET /books.json
  def index
    @books = Book.order('nome')
  end

  # GET /books/1
  # GET /books/1.json
  def show
    @race = Race.order('nome')
    @book = Book.find(params[:id])
  end

  # GET /books/new
  # GET /books/new.json
  def new
    @race = Race.order('nome')
    @book = Book.new
  end

  # GET /books/1/edit
  def edit
    @race = Race.order('nome')
    @book = Book.find(params[:id])
  end

  # POST /books
  # POST /books.json
  def create
    @race = Race.order('nome')
    @book = Book.new(book_params)

    respond_to do |format|
      if @book.save
        flash[:success] = 'Um novo livro foi criado com sucesso.'
        format.html { redirect_to @book }
        format.json { render :show, status: :created, location: @book }
      else
        flash[:danger] = 'Houve um problema na criação do novo livro.'
        format.html { render action: "new" }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /books/1
  # PATCH/PUT /books/1.json
  def update
    @race = Race.order('nome')
    respond_to do |format|
      if @book.update(book_params)
        flash[:success] = 'O livro foi atualizado com sucesso.'
        format.html { redirect_to @book }
        format.json { head :no_content }
      else
        flash[:danger] = 'Houve um problema na criação do novo nome.'
        format.html { render :edit }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /books/1
  # DELETE /books/1.json
  def destroy
    @book.destroy

    respond_to do |format|
      format.html { redirect_to books_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Book.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_params
      params.require(:book).permit(:nome, :descr, :datai, :dataf, :race_ids => [])
    end
end
