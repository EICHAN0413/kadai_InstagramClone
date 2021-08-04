class ContactsController < ApplicationController
  before_action :set_contact, only: %i[ show edit update destroy ]

  def show
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)

    respond_to do |format|
      if @contact.save
        ContactMailer.contact_mail(@contact).deliver
          format.html { redirect_to @contact, notice: "Contact was successfully created." }
          format.json { render :show, status: :created, location: @contact }
      else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def set_contact
      @contact = Contact.find(params[:id])
    end

    def contact_params
      params.require(:contact).permit(:name, :email, :content)
    end
end
