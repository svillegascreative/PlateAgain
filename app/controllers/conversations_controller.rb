class ConversationsController < ApplicationController

  def index
    if current_user
      @conversations = current_user.mailbox.conversations
    else
      redirect_back(fallback_location: root_path)
    end
  end

  def show
    @conversation = current_user.mailbox.conversations.find(params[:id])
    @receipts = @conversation.receipts_for(current_user).order("created_at ASC")
  end

  def new
    if (params[:user_id]).present?
      @recipient = User.find(params[:user_id])
    else
      @recipients = User.all - [current_user]
    end

    if (params[:subject]).present?
      @subject = params.fetch(:subject)
    end
  end

  def create
    @recipient = User.find(params[:user_id])
    receipt =  current_user.send_message(@recipient, params[:body], params[:subject])
    flash[:notice] = "Message to #{@recipient.name} sent successfully"
    # redirect_to conversation_path(receipt.conversation)

    # respond_to do |format|
    #     format.js { render 'conversations/create'}
    # end
  end

end
