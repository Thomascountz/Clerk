class ExpensesController < ApplicationController
	before_action :authenticate_user!, only: [:new]

	def new
		@expense = Expense.new
	end

	def create
		@expense = Expense.new(expense_params)
		if @expense.save
			flash[:success] = "Your expense has been added."
			redirect_to root_path
		else
			render 'new'
		end
	end

	private

		def expense_params
			params.require(:expense).permit(:title, :description, :amount)
		end
end