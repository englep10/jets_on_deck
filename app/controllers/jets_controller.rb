class JetsController < ApplicationController
	before_action :find_jet, only: [:show, :edit, :update, :destroy]

	def index
		@jets = Jet.all.order("created_at DESC")
	end

	def new
		@jet = Jet.new
	end

	def create
		@jet = Jet.new(jet_params)

		if @jet.save
			redirect_to @jet, notice: "Successfully created new jet"
		else
			render 'new'
		end

	end

	def show
		@jet = Jet.find(params[:id])
	end

	def edit

	end

	def update
		if @jet.update(jet_params)
			redirect_to @jet
		else
			render 'edit'
		end
	end

	def destroy
		@jet.destroy
		redirect_to root_path, notice: "Successfully deleted jet"
	end

	private

	def jet_params
		params.require(:jet).permit(:title, :make, :plane, :serial_number, :age, :description, :price)
	end

	def find_jet
		@jet = Jet.find(params[:id])
	end
end
