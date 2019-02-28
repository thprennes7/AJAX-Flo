class MailsController < ApplicationController
	def index
		@all_mails = Mail.all
	end
	def destroy
		@selected_mail = Mail.find(params[:id])
		if @selected_mail.destroy
			respond_to do |format|
				format.html { redirect_to mails_path}
				format.js
			end
		end
	end
	def show
		@selected_mail = Mail.find(params[:id])
		@selected_mail.update(read: true)
		respond_to do |format|
			format.html { redirect_to mails_path }
			format.js
		end
	end
end
