class ParagraphsController < ApplicationController
  # GET /paragraphs
  # GET /paragraphs.json
  def index
    @paragraphs = Paragraph.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @paragraphs }
    end
  end

  # GET /paragraphs/1
  # GET /paragraphs/1.json
  def show
    @paragraph = Paragraph.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @paragraph }
    end
  end

  # GET /paragraphs/new
  # GET /paragraphs/new.json
  def new
    @paragraph = Paragraph.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @paragraph }
    end
  end

  # GET /paragraphs/1/edit
  def edit
    @paragraph = Paragraph.find(params[:id])
  end

  # POST /paragraphs
  # POST /paragraphs.json
  def create
    @paragraph = Paragraph.new(paragraph_params)

    respond_to do |format|
      if @paragraph.save
        format.html { redirect_to @paragraph, notice: 'Paragraph was successfully created.' }
        format.json { render json: @paragraph, status: :created, location: @paragraph }
      else
        format.html { render action: "new" }
        format.json { render json: @paragraph.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /paragraphs/1
  # PATCH/PUT /paragraphs/1.json
  def update
    @paragraph = Paragraph.find(params[:id])

    respond_to do |format|
      if @paragraph.update_attributes(paragraph_params)
        format.html { redirect_to @paragraph, notice: 'Paragraph was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @paragraph.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /paragraphs/1
  # DELETE /paragraphs/1.json
  def destroy
    @paragraph = Paragraph.find(params[:id])
    @paragraph.destroy

    respond_to do |format|
      format.html { redirect_to paragraphs_url }
      format.json { head :no_content }
    end
  end

  private

    # Use this method to whitelist the permissible parameters. Example:
    # params.require(:person).permit(:name, :age)
    # Also, you can specialize this method with per-user checking of permissible attributes.
    def paragraph_params
      params.require(:paragraph).permit(:content, :index, :markdown, :title_id, :translate)
    end
end
