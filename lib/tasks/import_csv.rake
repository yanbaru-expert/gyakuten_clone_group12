namespace :import_csv do
  desc "Question CSVデータのインポート"
  task questions: :environment do
    Question.import('db/csv_data/question_data.csv')
  end

  desc "AWS CSVをインポート"
  task aws: :environment do
    Awstext.import('db/csv_data/aws_text_data.csv')
end
