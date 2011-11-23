#-*- coding: utf-8 -*-
class MessagesController < ApplicationController
  def index
  end

  def create
  if current_user.twitter.post('/statuses/update.json', :status => "HelloWorld")
  flash[:success]= "投稿成功しました"
  redirect_to root_path
  else
  flash[:error]= "投稿失敗しました"
  render :action => 'index'
  end
  end

end
