class Awstext < ApplicationRecord
  def self.import(path)
    list = []
    CSV.foreach(path,headers:true) do |row|
      list << {
        title:row["title"],
        content:row["content"]
      }
    end
    puts "インポート開始"
    Awstext.create!(list)
    puts "インポートに成功しました"
  rescue ActiveModel::UnknownAttributeError => invalid
    puts "インポートに失敗しました： #{invalid}"
  end
end
