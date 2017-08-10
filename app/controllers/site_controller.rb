class SiteController < ApplicationController

    # @results = Artist.where name: params[:term]
    # @results = Artist.where("name LIKE '#{params[:term]}'") #someone could mess your database because of sql injections
    # artists = Artist.where("name like ?", "%#{params[:term]}%") #safer way it protects from sql injections
    # @results = []
    # [Artist, Album, Label].each do |model|
    #   @results += model.where("name like ?", "%#{params[:term]}%")
    # end


    # @results = [Artist, Album, Label].map do |model|
    #   # model.where("name like ?", "%#{params[:term]}%")
    #   model.search(params[:term])
    # end.flatten

    def search
    term = params[:term]
    return if term.blank? # matches nil and ""

    @results = []
    [Artist, Album, Label].each do |model|
      @results += model.search term
    end
  end
end
