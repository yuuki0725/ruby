require "csv"
puts "1(新規でメモを作成) 2(既存のメモ編集する)"

memo_type = gets.chomp.to_s
if memo_type === "1"
    puts"新規でメモを作成します。"
    puts "拡張子を除いたファイルを入力してください。"
    memo_title = gets.chomp.to_s
    
    CSV.open("#{memo_title}.csv","w")do|csv|
    puts"メモをしたい内容を記述してください。"
    puts"Ctrl+Dでメモを完了します"
    create = readlines(chomp: true)
    csv << create
    end
    
elsif memo_type === "2"
    puts"既存のメモを編集します。"
    puts"拡張子を除いたファイル名を入力してください。"
    search = gets.chomp.to_s
    CSV.open("#{search}.csv","w") do |csv|
    puts"上書きしたい内容を記述してください。"
    puts"入力後Ctrl+Dでメモを完了します"
    create = readlines(chomp: true)
    csv << create
   end
end
