class CookingController < ApplicationController
  def choose_meat
    @meats = ["豚肉", "牛肉", "鶏肉"]
  end

  def save_meat
    session[:meat] = params[:meat]
    redirect_to choose_vegetables_path
  end

  def choose_vegetables
    @vegetables = ["きのこ", "長ねぎ", "里芋", "じゃがいも", "にんじん", "こんにゃく"]
  end

  def save_vegetables
    session[:vegetables] = params[:vegetables] || []
    redirect_to choose_seasoning_path
  end

  def choose_seasoning
    @seasonings = ["味噌", "醤油", "コンソメスープ"]
  end

  def save_seasoning
    session[:seasoning] = params[:seasoning]
    redirect_to result_path
  end
  def result
    meat       = session[:meat]
    vegetables = session[:vegetables] || []
    seasoning  = session[:seasoning]

    @result = RecipeJudge.new(
      meat: meat,
      vegetables: vegetables,
      seasoning: seasoning
    ).result
  end
end
