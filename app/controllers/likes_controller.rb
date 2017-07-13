class LikesController < ApplicationController
	before_action :authenticate_user!

	def toggle_like
		@tweet = Tweet.find(params[:tweet_id])
		like = Like.where(user: current_user, tweet: @tweet).first
		# @count_of_likes = tweet.likes.count.to_i ;
		if like
			like.destroy!
			@is_liked = false	
			# @count_of_likes = @count_of_likes -1
		else
			Like.create(user: current_user, tweet: @tweet)
			@is_liked = true
			# @count_of_likes = @count_of_likes + 1
		end

		respond_to do |format|
			format.js {}
		end
		
	end

end
