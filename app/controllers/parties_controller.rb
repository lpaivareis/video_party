class PartiesController < ApplicationController
  before_action :set_party, only: %i[ show edit update destroy ]
  after_action :add_new_view, only: :show
  after_action :update_embeded_link, only: %i[create update]

  def index
    @parties = Party.all
  end

  def show
  end

  def new
    @party = Party.new
  end

  def edit
  end

  def create
    @party = Party.new(party_params)

    respond_to do |format|
      if @party.save
        format.html { redirect_to party_url(@party), notice: "Party was successfully created." }
        format.json { render :show, status: :created, location: @party }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @party.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @party.update(party_params)
        format.html { redirect_to party_url(@party), notice: "Party was successfully updated." }
        format.json { render :show, status: :ok, location: @party }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @party.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @party.destroy

    respond_to do |format|
      format.html { redirect_to parties_url, notice: "Party was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def set_party
      @party = Party.find(params[:id])
    end

    def party_params
      params.require(:party).permit(:title, :embeded_link)
    end

    def add_new_view
      @party.views += 1
      @party.save
    end

    def update_embeded_link
      @party.embeded_link = @party.embeded_link.gsub("watch?v=", "embed/")
      @party.save
    end
end
