## take5
### 実際のコード

```
filename = "./recipe-date.txt"

file = File.new(filename)

recipes = []
file.each_line { |line| recipes << line }

recipes.each_with_index do |recipe, id| 
  puts "#{id + 1}: #{recipe}"
end
```

### リーダブルな理由
なぜなら、ファイル名だから変数名をfilenameにした。
とりあえず、recipesという名前の配列にレシピデータを格納し
`each_with_index` で配列番号と要素を取得し配列の番号を
ID代わりにして表示している。

> ## take6
> ### 実際のコード
>
> ```
> filename = "./recipe-date.txt"
>
> file = File.new(filename)
>
> recipes = []
> file.each_line { |line| recipes << line }
>
> recipes.each_with_index do |recipe, id| 
>   puts "#{id + 1}: #{recipe}"
> end
> ```
>
> ### リーダブルな理由
> なぜなら、ファイル名だから変数名をfilenameにした。
> とりあえず、recipesという名前の配列にレシピデータを格納し
> `each_with_index` で配列番号と要素を取得し配列の番号を
> ID代わりにして表示している。
>
