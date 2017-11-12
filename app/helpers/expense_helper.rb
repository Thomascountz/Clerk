module ExpenseHelper
	def sortable(column:, title: nil)
		title ||= column.titleize
		direction = column == sort_column && sort_direction == 'asc' ? 'desc' : 'asc'
		link_to title, params.permit(:column, :direction, :page, :search)
												 .merge(column: column, direction: direction, page: nil)
	end
end