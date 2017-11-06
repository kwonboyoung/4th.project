# 1. 특정 폴더로 들어 간다.
# 2. 파일을 생성한다.
# 3. 파일을 작성한다.

# 현재 디렉토리 확인
puts Dir.pwd

# how to ruby change directory
Dir.chdir("src")

puts Dir.pwd

# 30개의 파일을 만든다.
# 1.txt ~ 30.txt
# 1.txt => "1번째 내용", 2.txt => "2번째 내용" ...

# cf) https://stackoverflow.com/questions/7911669/how-to-create-a-file-in-ruby
# Creating 1 file
exfile = File.new("ex.txt", "w")
exfile.puts("ex file 입니다")
exfile.close

# 1번째 방법
#for i in (1 .. 30)
#    fileName = i.to_s + ".txt"
#    content = i.to_s + "번째 내용"
#    temp = File.new(fileName, "w")
#    temp.puts(content)
#    temp.close
#end

# 2번째 방법
30.times do |i|
    i += 1
    File.open(i.to_s+".txt","w") do |file|
        file.write(i.to_s+"번째 내용")
    end
end

