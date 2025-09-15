# spec/models/recipe_judge_spec.rb
require "rails_helper"

RSpec.describe RecipeJudge do
  describe "#result" do
    context "福島風の判定" do
      it "豚肉＋きのこ＋味噌で福島風になる" do
        judge = RecipeJudge.new(meat: "豚肉", vegetables: ["きのこ"], seasoning: "味噌")
        expect(judge.result).to eq("福島風")
      end
    end

    context "宮城風の判定" do
      it "豚肉＋きのこ以外の野菜＋味噌で宮城風になる" do
        judge = RecipeJudge.new(meat: "豚肉", vegetables: ["里芋", "にんじん"], seasoning: "味噌")
        expect(judge.result).to eq("宮城風")
      end
    end

    context "山形風の判定" do
      it "牛肉＋長ねぎ＋醤油＋他の野菜が入っても山形風になる" do
        judge = RecipeJudge.new(meat: "牛肉", vegetables: ["長ねぎ", "にんじん"], seasoning: "醤油")
        expect(judge.result).to eq("山形風")
      end
      it "牛肉＋長ねぎだけ＋醤油は失敗になる" do
        judge = RecipeJudge.new(meat: "牛肉", vegetables: ["長ねぎ"], seasoning: "醤油")
        expect(judge.result).to eq("失敗！")
      end
    end

    context "失敗判定" do
      it "条件に合わない組み合わせは失敗になる" do
        judge = RecipeJudge.new(meat: "鶏肉", vegetables: ["にんじん"], seasoning: "コンソメスープ")
        expect(judge.result).to eq("失敗！")
      end
    end
  end
end
