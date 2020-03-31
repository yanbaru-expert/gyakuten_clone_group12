namespace :import_movie_csv do
    # rake import_movie_csv:movies 
    desc "Movie csvデータのインポート"

    task movies: :environment do
        Movie.import("db/csv/movie_data.csv")
    end

end
