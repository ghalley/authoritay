class AnotherExamplesController < ApplicationController
  before_action :set_another_example, only: [:show, :edit, :update, :destroy]
  authorize_actions_for AnotherExample
  # authority_actions :breed => 'create', :vaporize => 'delete'

  # GET /another_examples
  # GET /another_examples.json
  def index
    @another_examples = AnotherExample.all
  end

  # GET /another_examples/1
  # GET /another_examples/1.json
  def show
  end

  # GET /another_examples/new
  def new
    @another_example = AnotherExample.new
  end

  # GET /another_examples/1/edit
  def edit
  end

  # POST /another_examples
  # POST /another_examples.json
  def create
    @another_example = AnotherExample.new(another_example_params)

    respond_to do |format|
      if @another_example.save
        format.html { redirect_to @another_example, notice: 'Another example was successfully created.' }
        format.json { render :show, status: :created, location: @another_example }
      else
        format.html { render :new }
        format.json { render json: @another_example.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /another_examples/1
  # PATCH/PUT /another_examples/1.json
  def update
    respond_to do |format|
      if @another_example.update(another_example_params)
        format.html { redirect_to @another_example, notice: 'Another example was successfully updated.' }
        format.json { render :show, status: :ok, location: @another_example }
      else
        format.html { render :edit }
        format.json { render json: @another_example.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /another_examples/1
  # DELETE /another_examples/1.json
  def destroy
    @another_example.destroy
    respond_to do |format|
      format.html { redirect_to another_examples_url, notice: 'Another example was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_another_example
      @another_example = AnotherExample.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def another_example_params
      params.require(:another_example).permit(:title)
    end
end
