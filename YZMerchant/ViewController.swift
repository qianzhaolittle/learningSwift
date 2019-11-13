//
//  ViewController.swift
//  YZMerchant
//
//  Created by mac on 2019/11/7.
//  Copyright © 2019年 YZMerchant. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.basicOperators();
//        self.stringsAndcharacters();
//        self.collectionType();
//        self.controlFlow();
//        self.learningFunction(status: "begin");
//        self.closures();
//        self.properties();
        
        
        
    }
    //MARK:- 基础部分
    func theBasics() -> Void {
        
        self.baseData();
        self.learningTypealias();
        self.learningTuples();
        self.learningOptional();
        self.learningErrorThrows();
    }
    
    func baseData() -> Void {
        
        //      常亮  变量  打印 注释
        let name = "qianzhao";
        var title = "I am";
        title = "my name is";
        print("type one == ",title, name);
        print("tyoe two == ","my name is \(name)");
        
        //      整数  整数范围
        //Int8 Int32 Int64 (有符号)
        //UInt8 UInt32 UInt64 (无符号)
        let minValueInt8 = Int8.min;let minValueInt32 = Int32.min;let minValueInt64 = Int64.min
        let maxValueInt8 = Int8.max;let maxValueInt32 = Int32.max;let maxValueInt64 = Int64.max
        print("minValueInt8== \(minValueInt8) maxValueInt8 == \(maxValueInt8)");
        print("minValueInt32== \(minValueInt32) maxValueInt8 == \(maxValueInt32)");
        print("minValueInt64== \(minValueInt64) maxValueInt8 == \(maxValueInt64)");
        
        //      浮点型
        // Double 64位  Float 32位 Double精确度很高，至少有15位数字，而Float只有6位数字
        let money = Double(33.333333333333333333333333333333333333333333333333333333333333333333333333);
        let floatMoney = Float(money);
        print("money == \(money)");
        print("floatMoney == \(floatMoney)");
        //打印结果
        //money == 33.333333333333336
        //floatMoney == 33.333332
        
        /*
         数值型字面量
         整数字面量可以被写作：
         
         一个十进制数，没有前缀
         一个二进制数，前缀是0b
         一个八进制数，前缀是0o
         一个十六进制数，前缀是0x
         下面的所有整数字面量的十进制值都是17:
         
         let decimalInteger = 17
         let binaryInteger = 0b10001       // 二进制的17
         let octalInteger = 0o21           // 八进制的17
         let hexadecimalInteger = 0x11     // 十六进制的17
         */
        
        //        数值类字面量可以包括额外的格式来增强可读性。整数和浮点数都可以添加额外的零并且包含下划线，并不会影响字面量：
        //        let paddedDouble = 000123.456
        let oneMillion = 1_000_000
        let justOverOneMillion = 1_000_000.000_000_1
        
        print(oneMillion,"--------",justOverOneMillion);
        //        打印结果 1000000 -------- 1000000.0000001
    }
    
    func learningTypealias() -> Void {
        //类型别名（type aliases）就是给现有类型定义另一个名字
        typealias base = Int8;
        print(base.max,"******",base.min);
    }
    
    func learningTuples() -> Void {
        
        let http404Error = (404, "Not Found", "请重新请求",false);
        
        let (http404,_,_,_) = http404Error;
        print(http404);
        
        let httpNotFount = http404Error.1;
        print(httpNotFount);
        
        //你可以在定义元组的时候给单个元素命名：
        let http200Status = (statusCode:200,description:"OK");
        let http200 = http200Status.statusCode;
        print(http200);
        
    }
    
    func learningOptional() -> Void {
        
        let possibleNumber = "123456"
        let convertedNumber = Int(possibleNumber);
        print(convertedNumber);
        //打印结果 Optional(123456)
        /*
         当你确定可选类型确实包含值之后，你可以在可选的名字后面加一个感叹号（!）来获取值。这个惊叹号表示“我知道这个可选有值，请使用它。”这被称为可选值的强制解析（forced unwrapping）：
         */
        if convertedNumber != nil {
            print(convertedNumber!);
            //打印结果 123456
        }
        
        //可选绑定
        if let actualNumber = Int(possibleNumber) {
            
            print(actualNumber);
        }else {
            
            print("cound not be converted to an integer");
        }
        
        //多个可选绑定
        if let firstNumber = Int("4"),let secondNumber = Int("42"),firstNumber < secondNumber && secondNumber < 100 {
            print("\(firstNumber)<\(secondNumber)<100");
        }
        
        //隐式解析可选类型 下面的例子展示了可选类型 String 和隐式解析可选类型 String 之间的区别：
        //        let possibleString: String? = "An optional string."
        //        let forcedString: String = possibleString! // 需要感叹号来获取值
        //
        //        let assumedString: String! = "An implicitly unwrapped optional string."
        //        let implicitString: String = assumedString  // 不需要感叹号
    }
    
    func learningErrorThrows() -> Void {
        
        // throws 抛出异常
        do {
            try makeASandwich()
            
        } catch{
            print("11111");
        }
    }
    
    func makeASandwich() throws -> Void {
        
    }
    
    enum makeASandwichError:Error {
        case error1
        case error2
        case error3
    }
    
    //MARK: - 基本运算符
    func basicOperators() -> Void {
        
        //Swift 还提供了 C 语言没有的区间运算符，例如 a..<b 或 a...b，这方便我们表达一个区间内的数值。
        //前置运算符需紧跟在操作对象之前（如 !b），后置运算符需紧跟在操作对象之后（如 c!）。
        //一元运算符 如 -a !b c! 二元运算符 + - * / % .... 三元运算符 ：三目运算符（a ? b : c）。
        
        //加法运算符也可用于 String 的拼接：
        let addStr = "hello, " + "world"
        print(addStr);
        
        /*
         注意：
         Swift 标准库只能比较七个以内元素的元组比较函数。如果你的元组元素超过七个时，你需要自己实现比较运算符
         如果两个元组的元素相同，且长度相同的话，元组就可以被比较。比较元组大小会按照从左到右、逐值比较的方式，直到发现有两个值不等时停止。如果所有的值都相等，那么这一对元组我们就称它们是相等的。例如：
         
         (1, "zebra") < (2, "apple")   // true，因为 1 小于 2
         (3, "apple") < (3, "bird")    // true，因为 3 等于 3，但是 apple 小于 bird
         (4, "dog") == (4, "dog")      // true，因为 4 等于 4，dog 等于 dog
         */
        
        //空合运算符（Nil Coalescing Operator） ??
        /*
         空合运算符（a ?? b）将对可选类型 a 进行空判断，如果 a 包含一个值就进行解封，否则就返回一个默认值 b。表达式 a 必须是 Optional 类型。默认值 b 的类型必须要和 a 存储值的类型保持一致。
         空合运算符是对以下代码的简短表达方法：
         
         a != nil ? a! : b
         */
        
        //区间运算符（Range Operators）
        //闭区间
        for index in 1...5 {
            print("\(index) * 5 == \(index * 5)")
        }
        //半开区间 （a..<b）
        let names = ["Anna", "Alex", "Brian", "Jack"]
        for i in 0..<names.count {
         print("第\(i + 1)个人叫\(names[i])")
        }
        //单侧区间
        for name in names[2...] {
            print(name);
        }
        for name in names[...1] {
            print(name);
        }
        for name in names[..<1] {
            print(name);
        }
        
    }
    
    //MARK: - 字符串和字符
    func stringsAndcharacters() -> Void {
        
        /*
         一个多行字符串字面量包含了所有的在开启和关闭引号（"""）中的行。这个字符从开启引号(""")之后的第一行开始，到关闭引号(""")之前为止。这就意味着字符串开启引号之后(""")或者结束引号(""")之前都没有换行符号。（译者：下面两个字符串其实是一样的，虽然第二个使用了多行字符串的形式）
         */
        
        let quotation = """

                            \tThe White Rabbit put on his \n spectacles.  "Where shall I begin,\r
                            \tplease your Majesty?" he asked.\r

                            \t"Begin at the beginning," the \n King said gravely, "and go on\r
                            \ttill you come to the end; then stop."\r

                            \t"Begin at the beginning," the King said gravely, "and go on\r
                            \ttill you come to the end; \n then stop."\r

                        """
        print(quotation);
        
        //转义字符\0(空字符)、\\(反斜线)、\t(水平制表符)、\n(换行符)、\r(回车符)、\"(双引号)、\'(单引号)。
        //Unicode 标量，写成\u{n}(u为小写)，其中n为任意一到八位十六进制数且可用的 Unicode 位码。
        
        //遍历字符串
        for character in "DOG!!🐶" {
            
            print(character);
        }
        
        //访问和修改字符串
        let name = "my name is Eric";
        let starIndex = name.startIndex;
        let endIndex = name.index(before: name.endIndex);
        let offSetIndex = name.index(starIndex, offsetBy: 3);
     
        print(name[starIndex]);
        print(name[endIndex]);
        print(name[offSetIndex]);
        
        
        //使用 indices 属性会创建一个包含全部索引的范围(Range)
        for index in name.indices {
            print(name[index]);
        }
        
        //插入和删除
        var sex = "man";
        sex.insert("!", at: sex.endIndex);
        print("sexOne==\(sex)");
        let insetIndex = sex.index(sex.startIndex, offsetBy: 3);
        sex.insert(contentsOf: "age = 18", at: insetIndex);
        print("sexTwo==\(sex)");
        sex.remove(at: sex.index(before: sex.endIndex));
        print("sexThree==\(sex)");
        let removeRange = sex.startIndex...sex.index(sex.startIndex, offsetBy: 2);
        sex.removeSubrange(removeRange);
        print("sexFour==\(sex)");
        
        //前缀/后缀 hasPrefix(_:)/hasSuffix(_:)方法来检查字符串是否拥有特定前缀/后缀，两个方法均接收一个String类型的参数，并返回一个布尔值。
    }
    
    //MARK: - 集合类型 (Collection Types)
    func collectionType() -> Void {
        
        //数组
        var nameArr = ["aa","bb","cc","dd","ee","ff","gg","hh",];
        print("nameArr == \(nameArr)");
        nameArr = nameArr + ["11","22","33","44","55","66","77","88",]
        print("AddNameArr == \(nameArr)");
        nameArr.append("钱兆");
        print("AddChinessName == \(nameArr)");
        nameArr[0...7] = ["99","100"];
        print("changeNameArr == \(nameArr)");
        /*
         nameArr == ["aa", "bb", "cc", "dd", "ee", "ff", "gg", "hh"]
         AddNameArr == ["aa", "bb", "cc", "dd", "ee", "ff", "gg", "hh", "11", "22", "33", "44", "55", "66", "77", "88"]
         AddChinessName == ["aa", "bb", "cc", "dd", "ee", "ff", "gg", "hh", "11", "22", "33", "44", "55", "66", "77", "88", "钱兆"]
         changeNameArr == ["99", "100", "11", "22", "33", "44", "55", "66", "77", "88", "钱兆"]
         */
        
        //删除
        nameArr.remove(at: 0);
        print("deleatOneElement == \(nameArr)");
        nameArr.removeSubrange(nameArr.startIndex...nameArr.index(nameArr.startIndex, offsetBy: 8));
        print("deleatAllNums == \(nameArr)");
        
        //增加
        nameArr.insert("哈哈", at: nameArr.startIndex)
        nameArr.insert("!", at: nameArr.endIndex);
//        nameArr.insert(contentsOf: ["小","七","喜欢"], at: nameArr.index(after: nameArr.index(nameArr.startIndex, offsetBy: 0)));
        nameArr.insert(contentsOf: ["小","七","喜欢"], at: nameArr.index(after: nameArr.startIndex))
        print("insertArr == \(nameArr)");
        
        var appendingStr = "";
        for (index ,value) in nameArr.enumerated() {
            
            appendingStr += value;
            print("index == \(index) value == \(value)");
        }
        print("综上所述 \(appendingStr)");
        
        
        //集合（Sets） 集合(Set)用来存储相同类型并且没有确定顺序的值。当集合元素顺序不重要时或者希望确保每个元素只出现一次时可以使用集合而不是数组。
        //空的集合
        var letters = Set<Character>()
        letters.insert("1");
        letters = [];
        
        var favoriterGenres:Set<String> = ["Book","2","1","5","0"];
        
        if let removeObjiect = favoriterGenres.remove("Book") {
            print(removeObjiect)
        }else {
            print("remove faild");
        }
        
        if favoriterGenres.contains("jk") {
            print("contains  jk");
        }else {
            print("no contains")
        }
        
        //遍历
        for items in favoriterGenres {
            
            print(items);
        }
        /*
         无序  2 1 5 0
        */
        
        for items in favoriterGenres.sorted() {
            
            print("排序",items);
        }
        
        /*
         有序  排序 0 排序 1 排序 2 排序 5
         */
        
        
        /*
         集合操作
         你可以高效地完成Set的一些基本操作，比如把两个集合组合到一起，判断两个集合共有元素，或者判断两个集合是否全包含，部分包含或者不相交。
         使用intersection(_:)方法根据两个集合中都包含的值创建的一个新的集合。
         使用symmetricDifference(_:)方法根据在一个集合中但不在两个集合中的值创建一个新的集合。
         使用union(_:)方法根据两个集合的值创建一个新的集合。
         使用subtracting(_:)方法根据不在该集合中的值创建一个新的集合。
         */
        
        let setOne: Set = [1,2,3,4,5,6,7,8,9];
        let setTwo: Set = [2,4,454,7,35];
        let setThress: Set = [1111,656565,6698979];
        
        let unionSet = setOne.union(setTwo);
        print("unionSet == \(unionSet)");
        
        let subtractingSet = setOne.subtracting(setThress);
        print("subtractingSet == \(subtractingSet)");
        
        let symmetricDifferenceSet = setTwo.symmetricDifference(setOne);
        print("symmetricDifferenceSet == \(symmetricDifferenceSet)");
        
        let intersectionSet = setOne.intersection(setTwo);
        print("intersectionSet == \(intersectionSet)")
        
        /*
         使用“是否相等”运算符(==)来判断两个集合是否包含全部相同的值。
         使用isSubset(of:)方法来判断一个集合中的值是否也被包含在另外一个集合中。
         使用isSuperset(of:)方法来判断一个集合中包含另一个集合中所有的值。
         使用isStrictSubset(of:)或者isStrictSuperset(of:)方法来判断一个集合是否是另外一个集合的子集合或者父集合并且两个集合并不相等。
         使用isDisjoint(with:)方法来判断两个集合是否不含有相同的值(是否没有交集)。
         */
        
        if setOne.isSubset(of: setTwo) {
            print("0");
        }
        
        if !setOne.isSuperset(of: setTwo) {
            print("1");
        }
        
        if unionSet.isStrictSubset(of: setOne) {
            print("2");
        }
        
        if setThress.isDisjoint(with: setOne) {
            print("3");
        }
        
        //字典
        var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
        airports["LHR"] = "London"
        //Swift 的字典类型是无序集合类型。为了以特定的顺序遍历字典的键或值，可以对字典的keys或values属性使用sorted()方法。
        for (key,value) in airports {
            
            print("key == \(key) value == \(value)");
        }
        
        for key in airports.keys.sorted() {
            
            print("key == \(key)")
        }
        
        for value in airports.values.sorted() {
            
            print("value == \(value)");
        }
    }
    
    //MARK: - 控制流（Control Flow）
    func controlFlow() -> Void {
        
        //For-In 循环
        for tickMark in stride(from: 0, through: 60, by: 5) {
            
            print("打印数据 == \(tickMark)");
        }
        
        //While 循环
        //    while condition {
        //    statements
        //    }
        
        //Repeat-While
        //    repeat {
        //    statements
        //    } while condition
        
        //Switch
        /*
         与 C 和 Objective-C 中的switch语句不同，在 Swift 中，当匹配的 case 分支中的代码执行完毕后，程序会终止switch语句，而不会继续执行下一个 case 分支。这也就是说，不需要在 case 分支中显式地使用break语句。这使得switch语句更安全、更易用，也避免了因忘记写break语句而产生的错误。
         */
        //swich——值绑定（Value Bindings）
        //case 分支允许将匹配的值声明为临时常量或变量，并且在case分支体内使用 —— 这种行为被称为值绑定（value binding），因为匹配的值在case分支体内，与临时的常量或变量绑定。
        let anotherPoint = (2, 0)
        
        switch anotherPoint {
        case (let x, 0):
            print("on the x-axis with an x value of \(x)")
        case (0, let y):
            print("on the y-axis with a y value of \(y)")
        case let (x, y):
            print("somewhere else at (\(x), \(y))")
        }
        
          //swich——Where
        let yetAnotherPoint = (1, -1)
        switch yetAnotherPoint {
        case let (x, y) where x == y:
            print("(\(x), \(y)) is on the line x == y")
        case let (x, y) where x == -y:
            print("(\(x), \(y)) is on the line x == -y")
        case let (x, y):
            print("(\(x), \(y)) is just some arbitrary point")
        }
        
        //swich——复合匹配
        //当多个条件可以使用同一种方法来处理时，可以将这几种可能放在同一个case后面，并且用逗号隔开。当case后面的任意一种模式匹配的时候，这条分支就会被匹配。并且，如果匹配列表过长，还可以分行书写：
        
        let someCharacter: Character = "e"
        switch someCharacter {
        case "a", "e", "i", "o", "u":
            print("\(someCharacter) is a vowel")
        case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
             "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
            print("\(someCharacter) is a consonant")
        default:
            print("\(someCharacter) is not a vowel or a consonant")
        }
        
        //提前退出
        let person = ["name":"qz"];
        guard let name = person["name"] else {
            return
        }
        print("Hello \(name)")
        
        //检测 API 可用性
        //我们在if或guard语句中使用可用性条件（availability condition)去有条件的执行一段代码，来在运行时判断调用的API是否可用。编译器使用从可用性条件语句中获取的信息去验证，在这个代码块中调用的 API 是否可用
        if #available(iOS 10, macOS 10.12, *) {
            // 在 iOS 使用 iOS 10 的 API, 在 macOS 使用 macOS 10.12 的 API
        } else {
            // 使用先前版本的 iOS 和 macOS 的 API
        }
    }
    
    //MARK: - 函数（Functions）
    func learningFunction(status : String) -> Void {
        
        if status == "begin" {
            
            print("I have ready for learning Function");
            //多重返回值函数
            print(self.aMan(name: "qz").health);
            
            //可变参数
            print(self.addNums(number: 1.0,2.0,3.0,4.0))
            print(self.appendingStr(tempStr: "I","like","learning","Swift!"));
            
            //输入输出参数  定义一个输入输出参数时，在参数定义前加 inout 关键字 你只能传递变量给输入输出参数。你不能传入常量或者字面量，因为这些量是不能被修改的。当传入的参数作为输入输出参数时，需要在参数名前加 & 符，表示这个值可以被函数修改。
            var elementOne = 0;
            var elementTwo = 1;
            print(self.swapTwoInts(&elementOne, &elementTwo))
            
            //使用函数类型
            let addFunction = mathFunction;
            addFunction(1,2);
            
            //函数类型作为参数类型
            self.printMathResult(addFunction, 3, 8);
            //闭包形式
            self.printMathResult({ (a, b) in
                print("a + b = \(a + b)")
            }, 4, 5);
            
            //函数类型作为返回类型
            let  a = self.retuenFuction(a: 1, b: 2)
            a(1111);
            
            
        }else {
            return;
        }
    }
    
    //多重返回值函数
    func aMan(name : String) -> (name : String,sex : String,health:String) {
        
        switch name {
        case "qz":
            return ("钱兆","男","良好")
            
        case "Jone":
            return ("乔恩","女","。。")
        default:
            return ("xx", "xx", "xx");
        }
        
    }
    
    //可变参数
    func addNums(number : Double...)-> (Double) {
        
        var total = 0.0;
        for nun in number {
            
            total += nun;
        }
        return total;
    }
    
    func appendingStr(tempStr : String...) -> String {
        var str = "";
        for item in tempStr {
            
            str += item;
        }
        return str;
    }
   
    //输入输出函数
    func swapTwoInts(_ a: inout Int, _ b: inout Int) ->(a:Int,b:Int){
        
        print("orgin_a == \(a)  orgin_b==\(b)");
        
        let temporaryA = a
        a = b
        b = temporaryA
        
        return(a,b);
    }
    
    //使用函数类型
    func mathFunction(a: Int,b: Int) -> Void {
        
        print("a + b = \(a+b)");
        
    }
    
    //函数类型作为参数类型
    func printMathResult(_ elementOne:(Int,Int)->Void,_ c: Int,_ d: Int) -> Void {

        elementOne(c,d);

    }
    
    //函数类型作为返回类型
    func retuenFuction(a: Int, b: Int) -> (Int)->Void {
        
        if a > b {
            return elementReturnFuction;
        }
       
        return elementReturnFuction_0;
    }
    
    func elementReturnFuction(a: Int) -> Void {
        
        print(">\(a)")
    }
    
    func elementReturnFuction_0(a: Int) -> Void {
        print("<\(a)")
    }
    
    //MARK: - 闭包（Closures)
    func closures() -> Void {
        
        /*
            闭包表达式语法
            { (parameters) -> returnType in
            statements
            }
         */
        
        let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"];
        //sorted 排序
        var reversedName = names.sorted { (s1, s2) -> Bool in
            return s1 > s2
        };
        print("reversedName = \(reversedName)")
        
        //根据上下文推断类型
        //为排序闭包函数是作为 sorted(by:) 方法的参数传入的，Swift 可以推断其参数和返回值的类型。sorted(by:) 方法被一个字符串数组调用，因此其参数必须是 (String, String) -> Bool 类型的函数。这意味着 (String, String) 和 Bool 类型并不需要作为闭包表达式定义的一部分。因为所有的类型都可以被正确推断，返回箭头（->）和围绕在参数周围的括号也可以被省略：
        
        reversedName = names.sorted(by: { s2, s1 in return s1 > s2});
        print("reversedName = \(reversedName)")
        
        //单表达式闭包隐式返回
        reversedName = names.sorted(by: { s2, s1 in s1 > s2});
        print("reversedName = \(reversedName)")
        
        //参数名称缩写
        //Swift 自动为内联闭包提供了参数名称缩写功能，你可以直接通过 $0，$1，$2 来顺序调用闭包的参数，以此类推
        reversedName = names.sorted(by: {$0 > $1});
        print("reversedName = \(reversedName)")
        
        //运算符方法
        //。Swift 的 String 类型定义了关于大于号（>）的字符串实现，其作为一个函数接受两个 String 类型的参数并返回 Bool 类型的值。而这正好与 sorted(by:) 方法的参数需要的函数类型相符合。因此，你可以简单地传递一个大于号，Swift 可以自动推断出你想使用大于号的字符串函数实现：
        reversedName = names.sorted(by: >);
        print("reversedName = \(reversedName)")
        
        //尾随闭包
        //如果你需要将一个很长的闭包表达式作为最后一个参数传递给函数，可以使用尾随闭包来增强函数的可读性。尾随闭包是一个书写在函数括号之后的闭包表达式，函数支持将其作为最后一个参数调用。在使用尾随闭包时，你不用写出它的参数标签：
        self.someFunctionThatTakesAClosure(temp: 4) { (temp) in
             print(temp);
        }

        //值捕获
        //闭包可以在其被定义的上下文中捕获常量或变量。即使定义这些常量和变量的原作用域已经不存在，闭包仍然可以在闭包函数体内引用和修改这些值。Swift 中，可以捕获值的闭包的最简单形式是嵌套函数，也就是定义在其他函数的函数体内的函数。嵌套函数可以捕获其外部函数所有的参数以及定义的常量和变量。
        
        //逃逸闭包
        let instance = SomeClass()
        instance.doSomething()
        print(instance.x)
        ////这里调用了两个方法 但是伴随的是非逃逸闭包被调用了，逃逸闭包并没有被调用，调用的只是将逃逸闭包加入到数组当中,所以 打印出 "200"
        
        //逃逸闭包在这个地方调用了
        instance.completionHandlers.first?()
        print(instance.completionHandlers.first ?? "",instance.x)
        // 打印出 "100"
        
        //自动闭包
        //自动闭包是一种自动创建的闭包，用于包装传递给函数作为参数的表达式。这种闭包不接受任何参数，当它被调用的时候，会返回被包装在其中的表达式的值。这种便利语法让你能够省略闭包的花括号，用一个普通的表达式来代替显式的闭包。注意 过度使用 autoclosures 会让你的代码变得难以理解。
        
//        elc1
//        func serve(customer customerProvider: () -> String) {
//            print("Now serving \(customerProvider())!")
//        }
//        serve(customer: { customersInLine.remove(at: 0) } )
        
//        elc2
        // customersInLine is ["Ewa", "Barry", "Daniella"]
//        func serve(customer customerProvider: @autoclosure () -> String) {
//            print("Now serving \(customerProvider())!")
//        }
//        serve(customer: customersInLine.remove(at: 0))
        // 打印 "Now serving Ewa!"
        
    }
    
    func someFunctionThatTakesAClosure(temp: Int,closure11:(_ a: Int) ->Void) -> Void {
        print(temp);
        closure11(temp + 4);
    }
    
    class SomeClass {
        
        var completionHandlers: [() -> Void] = []
        var x = 10
        func doSomething() {
            
            someFunctionWithEscapingClosure { self.x = 100 }
            someFunctionWithNonescapingClosure { x = 200 }
        }
        
        func someFunctionWithEscapingClosure(completionHandler: @escaping () -> Void) {
            //还没调用闭包 只是将闭包放到数组中 由于闭包是逃逸的 可以在其他想要调用的地方调用而不是跟着方法一起调用
            completionHandlers.append(completionHandler)
        }
        
        func someFunctionWithNonescapingClosure(closure: () -> Void) {
            //直接调用闭包 应为不是逃逸
            closure()
        }
    }
    
    //MARK: - 属性 (Properties)
    func properties() -> Void {
        
        //lazy 延迟存储属性
        //延迟存储属性是指当第一次被调用的时候才会计算其初始值的属性。在属性声明前使用 lazy 来标示一个延迟存储属性  使用 var 关键字
        //注意 如果一个被标记为 lazy 的属性在没有初始化时就同时被多个线程访问，则无法保证该属性只会被初始化一次。
        let manager = DataManager()
        manager.data.append("Some data")
        manager.data.append("Some more data")
        //当需要用到lazy修饰的属性时候再调用
        print(manager.importer.fileName);
        
        //注意
        //全局的常量或变量都是延迟计算的，跟延迟存储属性相似，不同的地方在于，全局的常量或变量不需要标记lazy修饰符。局部范围的常量或变量从不延迟计算
    }
    
    class DataImporter {
        
        var fileName = "data.text";
    }
    
    class DataManager {
        
        lazy var importer = DataImporter();
        var data:[String] = [];
    }
    
    //MARK: - 方法（Methods）
    func methods() -> Void {
        
        //结构体和枚举能够定义方法是 Swift 与 C/Objective-C 的主要区别之一。在 Objective-C 中，类是唯一能定义方法的类型。但在 Swift 中，你不仅能选择是否要定义一个类/结构体/枚举，还能灵活地在你创建的类型（类/结构体/枚举）上定义方法。
        
        //self 属性
        //类型的每一个实例都有一个隐含属性叫做self，
        
        //在实例方法中修改值类型 结构体和枚举是值类型。默认情况下，值类型的属性不能在它的实例方法中被修改。
        //要使用可变方法，将关键字mutating 放到方法的func关键字之前就可以了：
        var somePoint = Point(x: 1.0, y: 2.0);
        //只能用变量不用用let
        somePoint.moveByX(xx: 4.0, yy: 5.0);
        print("somePoint == \(somePoint)");
        
        //在可变方法中给 self 赋值
        //调用这个版本的方法和调用上个版本的最终结果是一样的。
        
        //类型方法(类方法)
        SomeClass01.classMethods()
    }
    
    struct Point {
        var x = 0.0, y = 0.0
        mutating func moveByX(xx:Double, yy:Double) {
            
            x += xx;
            y += yy;
        }
        
    }
    
    //在可变方法中给 self 赋值
    struct PointSelf {
        var x = 0.0, y = 0.0
        mutating func moveByX(xx:Double, yy:Double) {
            
            self = PointSelf (x: x + xx, y: y + yy);
        }
    }
    
     //类型方法(类方法)
    class SomeClass01 {
        
        class func classMethods() -> Void {
            print("classMethods")
        }
    }
    
    //MARK: - 析构过程
    func deinitProcess() -> Void {
        
    }
    
}
