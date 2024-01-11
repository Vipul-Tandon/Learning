#Symbols: Symbols are light-weight strings. A symbol is preceded by a colon (:). 
#They are used instead of strings because they can take up much less memory. 
#Symbols have better performance.

domains = {:sk => "GeeksforGeeks", :no => "GFG", :hu => "Geeks"}
 
puts domains[:sk]
puts domains[:no]
puts domains[:hu]

name = :Vipul;
puts name