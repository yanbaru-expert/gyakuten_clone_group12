class Movie < ApplicationRecord
    def self.import(path)
        list = []
        CSV.foreach(path, headers: true) do |row|
            list << {
                movie_title: row["movie_title"],
                movie_url: row["movie_url"]
        }
        end
        puts "データのインポートを開始しました！"
        Movie.create!(list)
        puts "データのインポートに成功しました！"
    rescue ActiveModel::UnknownAttributeError => invalid
        puts "データのインポートに失敗しました！"
    end
end
