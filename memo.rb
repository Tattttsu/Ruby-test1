require "csv"
 
puts "1(新規でメモを作成) 2(既存のメモ編集する)"

memo_type = gets.to_i

if memo_type == 1
  puts "拡張子を除いたファイル名を入力してください"
  name = gets.chomp
  puts "メモしたい内容を記入してください"
  puts "完了したらCtrl + Dをおします"
  memo = $stdin.read
  CSV.open("#{name}.csv", "w") do |csv|
    csv << [memo]
  end

elsif memo_type == 2
  puts "既存のファイル名を入力してください"
  name = gets.chomp
  puts "メモしたい内容を記入してください"
  puts "完了したらCtrl + Dをおします"
  memo = $stdin.read
  CSV.open("#{name}.csv", "a") do |csv|
    csv << [memo]
  end
else
  puts "最初からやり直し、1か2を入力してください"
end

