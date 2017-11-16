class ExpensesController < ApplicationController
	helper_method :sort_column, :sort_direction

	before_action :authenticate_user!

	def index
		@expenses = current_user.expenses
														.search(params[:search])
														.order("#{sort_column} #{sort_direction}")
														.paginate(page: params[:page], per_page: 15)
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

	def destroy
		@expense = Expense.find(params[:id])
		if @expense.destroy
			flash[:success] = "#{@expense.title} has been deleted."
			redirect_to root_path
		else
			flash[:danger] = "Something went wrong."
			redirect_to root_path
		end
	end

	private

		def expense_params
			params.require(:expense).permit(:title, :description, :amount)
		end

		def sort_column
			Expense.column_names.include?(params[:column]) ? params[:column] : 'created_at'
		end

		def sort_direction
			%w(asc desc).include?(params[:direction]) ? params[:direction] : 'desc'
		end
end