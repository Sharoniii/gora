class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def goragora
    if params[:zone_id].present? || params[:category].present?
      if params[:zone_id].present? && params[:category].present?
        @goragora = current_user.menus.where('zone_id = ? AND category = ?', params[:zone_id], params[:category]).order("RANDOM()").first
        @groups = current_user.menus.group(:category)
        @menues = current_user.menus

        @zone = Zone.find(params[:zone_id])
        @category = Menu.find_by(category:params[:category])


      elsif params[:zone_id].present?
        @goragora = current_user.menus.where(zone_id: params[:zone_id]).order("RANDOM()").first

      elsif params[:category].present?
        @goragora = current_user.menus.where(category: params[:category]).order("RANDOM()").first
      end

    else
      @goragora = current_user.menus.order("RANDOM()").first

    end
  end
end
