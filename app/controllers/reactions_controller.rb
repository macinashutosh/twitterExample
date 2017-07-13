class ReactionsController < ApplicationController

	def  react
	 @tweet_id = params[:tweet_id]
	 @id_type = params[:id_type]
	 obj = Reaction.where(tweet_id: @tweet_id , user_id: current_user.id).first;
	 	if obj
	 		obj.feeling = @id_type
	 		obj.save
	 	else 
	 		newObj = Reaction.new
	 		newObj.tweet_id = @tweet_id
	 		newObj.user_id = current_user.id
	 		newObj.feeling = @id_type
	 		newObj.save
	 	end
	 	respond_to do |format|
	 	format.html{redirect_to '/'}
	 	format.js {}
	 	end
	end
end
