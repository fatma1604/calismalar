void main(List<String> args) {
 
  //const varrr bunlarda değişmez pi sayısı gibi değtiremesin

  //dinamik ile var arasıdaki farkalara bakalım
  dynamic number = 10.5;
  number = 16;
  number = "merhaba";
  print("**var ve dinamik demesi***");
  print(number);

  var first = 15;
  var first1 = "hello";

  print(first);
  print(first1);
}
