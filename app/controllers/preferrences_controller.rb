class PreferrencesController < ApplicationController
    before_action :correct_user, only: :destroy
    def new
        @preferrence = current_user.preferrences.new
    end
    
    def create
        @preferrence = current_user.preferrences.build(preferrence_params)
        @preferrence.save
        redirect_to current_user
    end
    def destroy
    @preferrence.destroy
    redirect_to request.referrer || root_url
    end

    def preferrence_params
    params.require(:preferrence).permit(:disliked_item)
    end

    private

    def correct_user
    @preferrence = current_user.preferrences.find_by(id: params[:id])
    redirect_to root_url if @preferrence.nil?
    end
end
