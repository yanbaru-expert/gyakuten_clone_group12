namespace :import_csv do
  #rakeコマンド
  #rake import_csv:aws
  desc "AWS CSVをインポート"
  task aws: :environment do
    Awstext.import('db/csv_data/aws_text_data.csv')
  end

  desc "Question CSVデータのインポート"
  task questions: :environment do
    Question.import('db/csv_data/question_data.csv')
  end
end
