# 파일명 바꾸기

# 1. 폴더 안으로 들어간다.
Dir.chdir("src")

# 2. 폴더 안으로 돌면서 파일들의 이름을 가져온다.
#Dir.foreach(Dir.pwd) do |name|
    
#end

# puts Dir.entries(Dir.pwd) # .이나 ..도 같이 나옴. 이건 cd ..에 쓰이는 그런....ㅋㅋㅋㅋ

files = Dir.entries(Dir.pwd).reject {|name| name[0]=='.'}
        
puts files

# 3. 각각의 이름을 "1.txt" => "samsung1.txt"
files.each do |f|
    File.rename(f,"samsung"+f)
end



