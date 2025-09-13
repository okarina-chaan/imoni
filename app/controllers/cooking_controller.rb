class CookingController < ApplicationController
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
