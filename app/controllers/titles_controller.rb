class TitlesController < ApplicationController
  # GET /titles
  # GET /titles.json
  def index
    @titles = Title.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @titles }
    end
  end

  # GET /titles/1
  # GET /titles/1.json
  def show
    @title = Title.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @title }
    end
  end

  # GET /titles/new
  # GET /titles/new.json
  def new
    @title = Title.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @title }
    end
  end

  # GET /titles/1/edit
  def edit
    @title = Title.find(params[:id])
  end

  # POST /titles
  # POST /titles.json
  def create
    @title = Title.new(title_params)

    respond_to do |format|
      if @title.save
        format.html { redirect_to @title, notice: 'Title was successfully created.' }
        format.json { render json: @title, status: :created, location: @title }
      else
        format.html { render action: "new" }
        format.json { render json: @title.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /titles/1
  # PATCH/PUT /titles/1.json
  def update
    @title = Title.find(params[:id])

    respond_to do |format|
      if @title.update_attributes(title_params)
        format.html { redirect_to @title, notice: 'Title was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @title.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /titles/1
  # DELETE /titles/1.json
  def destroy
    @title = Title.find(params[:id])
    @title.destroy

    respond_to do |format|
      format.html { redirect_to titles_url }
      format.json { head :no_content }
    end
  end

  private

    # Use this method to whitelist the permissible parameters. Example:
    # params.require(:person).permit(:name, :age)
    # Also, you can specialize this method with per-user checking of permissible attributes.
    def title_params
      params.require(:title).permit(:book_id, :desc, :name)
    end
end
