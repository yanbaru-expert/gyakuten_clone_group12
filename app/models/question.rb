class Question < ApplicationRecord
  def self.import(path)
    list = []
    CSV.foreach(path, headers: true) do |row|
      list << {
              question: row["question"],
              detail: row["detail"],
      }
    end

    puts "インポートを開始しました"

    begin
      Question.create!(list)
      puts "インポートを完了しました"
    rescue ActiveModel::UnknownAttributeError => invalid
      puts "インポートに失敗 :UnknownAttributeError"
    end
  end
end
