class ExpensesController < ApplicationController
	before_action :authenticate_user!, only: [:new, :create]

	def new
		@expense = current_user.expenses.build
	end

	def create
		@expense = current_user.expenses.build(expense_params)
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