require "csv"
puts "1(新規でメモを作成) 2(既存のメモ編集する)"

memo_type = gets.chomp.to_s
if memo_type === "1"
    puts"新規でメモを作成します。"
    puts "拡張子を除いたファイルを入力してください。"
    memo_title = gets.chomp.to_s
    
    puts"メモをしたい内容を記述してください。"
    puts"Ctrl+Dでメモを完了します"
    text_main = gets.chomp.to_s
    
    CSV.open("#{memo_title}.csv","w")do|csv|
    csv << [text_main]
    end
    
elsif memo_type === "2"
    puts"既存のメモを編集します。"
    
    Dir.glob('**/*.csv') do |item|
    puts item
    end
    
    puts"拡張子を除いたファイル名を入力してください。"
    
    memo_title = gets.chomp.to_s
    
    puts"メモをしたい内容を記述してください。"
    puts"Ctrl+Dでメモを完了します"
    
    text_main = gets.chomp.to_s
    
    CSV.open("#{memo_title}.csv","a")do|csv|
    csv << [text_main]
    end
    
else 
    puts"正しい数字を入力してください。"
    
end