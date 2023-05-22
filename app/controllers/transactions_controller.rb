class TransactionsController < ApplicationController

    def new
        @transaction = Transaction.new
    end

    def create   
        @transaction = Transaction.new(transaction_params)
        @transaction.payer_id = current_user.id

        payee = User.find(@transaction.payee_id)

        if @transaction.save
            current_user.update({balance: (current_user.balance - @transaction.amount)})
            payee.update({balance: (payee.balance + @transaction.amount)})
            redirect_to account_path, notice: 'Successfully created transaction!'
        else
            render :new, notice: 'Transaction failed!'
        end
    end

    private 

    def transaction_params
        params.require(:transaction).permit(:amount, :payee_id)
    end
end
