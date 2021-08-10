class FavoritesController < ApplicationController

    


    def create
        favorite = current_user.favorites.create(picture_id: params[:picture_id])
        redirect_to pictures_path, notice: "#{ favorite.picture.user.name }さんのブログをお気に入り登録しました"
    end

    def destroy
        favorite = destroy
        redirect_to pictures_path, notice: "#{favorite.picture.user.name}さんのブログをお気に入り解除しました"
    end

    def index
        @favorites = Favorite.all.where(user_id: current_user)
    end

end
