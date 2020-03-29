namespace :import_csv do
  desc "Question CSVデータのインポート"

  task questions: :environment do
    Question.import('db/csv_data/question_data.csv')
  end
end
