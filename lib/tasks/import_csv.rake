namespace :import_csv do
  #rakeコマンド
  #rake import_csv:aws
  desc "AWS CSVをインポート"
  task aws: :environment do
    Awstext.import('db/csv_data/aws_text_data.csv')
  end
end
