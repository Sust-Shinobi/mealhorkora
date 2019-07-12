class PreferrencesController < ApplicationController
    def new
        @preference = current_user.preferences.new
    end
    
    def create
        @preference = current_user.preferences.build(preference_params)
        @preference.save
      end
      def destroy
        @preference.destroy
      end
    
      def preference_params
        params.require(:preference).permit(:disliked_item)
      end
end
