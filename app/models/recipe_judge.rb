class RecipeJudge
  def initialize(meat:, vegetables:, seasoning:)
    @meat = meat
    @vegetables = vegetables
    @seasoning = seasoning
  end

  def result
    if fukushima?
      "福島風"
    elsif miyagi?
      "宮城風"
    elsif yamagata?
      "山形風"
    else
      "失敗！"
    end
  end

  private

  attr_reader :meat, :vegetables, :seasoning

  def fukushima?
    meat == "豚肉" && vegetables.include?("きのこ") && seasoning == "味噌"
  end

  def miyagi?
    meat == "豚肉" && !vegetables.include?("きのこ") && seasoning == "味噌"
  end

  def yamagata?
    meat == "牛肉" && vegetables.include?("長ねぎ") && seasoning == "醤油"
  end
end
