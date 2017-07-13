class Reaction < ActiveRecord::Base
  belongs_to :user
  belongs_to :tweet
  def getReaction curr_feeling
  	 if self.feeling == curr_feeling
  	 	return true;
  	 else 
  	 	return false;
  	 end
  end
end
