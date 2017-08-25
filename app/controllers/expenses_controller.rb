class ExpensesController < ApplicationController
	before_action :authenticate_user!, only: [:index, :new, :create, :show, :edit]

	def index
		@expenses = current_user.expenses
	end

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

	def show
		@expense = Expense.find(params[:id])
	end

	def edit
		@expense = Expense.find(params[:id])
	end

	def update
		@expense = Expense.find(params[:id])
		if @expense.update(expense_params)
			flash[:success] = "Your expense has been updated."
			redirect_to root_path
		else
			render 'edit'
		end
	end

	private

		def expense_params
			params.require(:expense).permit(:title, :description, :amount)
		end
end