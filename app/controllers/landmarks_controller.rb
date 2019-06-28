class LandmarksController < ApplicationController

  #-----Create-----

  get '/landmarks/new' do
    erb :'landmarks/new'
  end

  post '/landmarks' do
    landmark = Landmark.create(params[:landmark])
    redirect "landmarks/#{landmark.id}"
  end

  #-----Read------

  get '/landmarks' do
    erb :'landmarks/index'
  end

  get '/landmarks/:id' do
    landmark = Landmark.find(params[:id])
    erb :'landmarks/show'
  end







end
