class ExpensesController < ApplicationController
  before_action :set_expense, only: %i[show edit update]

  # GET /expenses or /expenses.json
  def index
    @expenses = Expense.all
  end

  # GET /expenses/new
  def new
    @expense = Expense.new
    @group = Group.find(params[:category_id])
  end

  # POST /expenses or /expenses.json
  def create
    @expense = Expense.new(expense_params)
    @expense.author = current_user
    @group = Group.find(params[:category_id])
    @group_expense = GroupExpense.new(group: @group, expense: @expense)
    @groups = Group.all

    respond_to do |format|
      if @expense.save
        @group_expense.save
        format.html { redirect_to category_url(@group), notice: 'Expense was successfully created.' }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /expenses/1 or /expenses/1.json
  def destroy
    @expense = Expense.find(params[:expense_id])
    @expense.destroy

    respond_to do |format|
      format.html { redirect_to category_path, notice: 'Expense was successfully destroyed.' }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_expense
    @expense = Expense.find(params[:expense_id])
  end

  # Only allow a list of trusted parameters through.
  def expense_params
    params.require(:expense).permit(:name, :amount, :category_id)
  end
end
