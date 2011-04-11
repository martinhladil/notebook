class NotesController < ApplicationController

  respond_to :html, :json

  # GET /notes
  # GET /notes.json
  def index
    @notes = Note.all
    respond_with(@notes)
  end

  # GET /notes/1
  # GET /notes/1.json
  def show
    @note = Note.find(params[:id])
    respond_with(@note)
  end

  # GET /notes/new
  # GET /notes/new.json
  def new
    @note = Note.new
    respond_with(@note)
  end

  # GET /notes/1/edit
  def edit
    @note = Note.find(params[:id])
  end

  # POST /notes
  # POST /notes.json
  def create
    @note = Note.new(params[:note])
    @note.save
    respond_with(@note)
  end

  # PUT /notes/1
  # PUT /notes/1.json
  def update
    @note = Note.find(params[:id])
    respond_with(@note)
  end

  # DELETE /notes/1
  # DELETE /notes/1.json
  def destroy
    @note = Note.find(params[:id])
    @note.destroy
    respond_with(@note)
  end
end
