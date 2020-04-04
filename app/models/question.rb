class Question < ApplicationRecord
  validates :title, presence: true
  validates :detail, presence: true

  # rake import_csv:questions  
  def self.import(path)
    list = []
    CSV.foreach(path, headers: true) do |row|
      list << {
              title:row["title"],
              detail:row["detail"]
      }
    end

    puts "インポートを開始しました"

    begin
      Question.create!(list)
      puts "インポートを完了しました"
    rescue ActiveModel::UnknownAttributeError => invalid
      puts "インポートに失敗 :#{invalid}"
    end
  end
end
