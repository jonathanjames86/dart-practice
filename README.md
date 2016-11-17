//
//As you learn about the Dart language, keep these facts and concepts in mind:
//
//• Everything you can place in a variable is an object, and every object is an instance
//
//of a class. Even numbers, functions, and null are objects. All objects inherit from
//
//the Object class.
//
//• Specifying static types (such as num in the preceding example) clarifies your intent
//
//and enables static checking by tools, but it’s optional. (You might notice when you’re
//
//debugging your code that variables with no specified type get a special type:
//
//dynamic.)
//
//12 | Chapter 2: A Tour of the Dart Language
//
//• Dart parses all your code before running it. You can provide tips to Dart—for ex‐
//
//ample, by using types or compile-time constants—to catch errors or help your code
//
//run faster.
//
//• Dart supports top-level functions (such as main()), as well as functions tied to a
//
//class or object (static and instance methods, respectively). You can also create func‐
//
//tions within functions (nested or local functions).
//
//• Similarly, Dart supports top-level variables, as well as variables tied to a class or
//
//object (static and instance variables). Instance variables are sometimes known as
//
//fields or properties.
//
//• Unlike Java, Dart doesn’t have the keywords public, protected, and private. If an
//
//identifier starts with an underscore (_), it’s private to its library. For details, see
//
//“Libraries and Visibility” on page 52.
//
//• Identifiers can start with a letter or _, followed by any combination of those char‐
//
//acters plus digits.
//
//• Sometimes it matters whether something is an expression or a statement, so we’ll
//
//be precise about those two words.
//
//• Dart tools can report two kinds of problems: warnings and errors. Warnings are
//
//just indications that your code might not work, but they don’t prevent your program
//
//from executing. Errors can be either compile-time or runtime. A compile-time error
//
//prevents the code from executing at all; a runtime error results in an exception (page
//
//35) being raised while the code executes.
//
//• Dart has two runtime modes: production and checked. Production is faster, but
//
//checked is helpful at development.
//
//Keywords
//
//Table 2-1 lists the words that the Dart language treats specially.
//
//Table 2-1. Dart keywords
//
//abstract * continue extends implements * part * throw
//
//as * default factory * import * rethrow true
//
//assert do false in return try
//
//break dynamic * final is set * typedef *
//
//case else finally library * static * var
//
//catch enum for new super void
//
//class export * get * null switch while
//
//const external * if operator * this with





Use var for Local variables rather than type annotations

If you never intend to change a variable use Final or Const
ie: final name = 'Bob'

//TYPES--------------------------------

//int = Integer
//double = Floating-point number
//num =
//bool
//String
//List-Array
//Map - object
//dynamic


Changing a number to a string---------------------

var one = int.parse('1');
assert(one == 1);

String to a number----------------

String oneAsString = 1.toString();
assert(onAsString == '1');

You can put the value of an expression inside a string by using ${expression}. If the
expression is an identifier, you can skip the {}. To get the string corresponding to an
object, Dart calls the object’s toString() method:

var s = 'string interpolation';

assert('Dart has $s, which is very handy.' =='Dart has string interpolation, which is very handy.');

assert('That deserves all caps. ${s.toUpperCase()} is very handy!' == 'That deserves all caps. STRING INTERPOLATION is very handy!');


You can use Unicode escapes inside of strings:

print('Unicode escapes work: \u2665'); // Unicode escapes work: [heart]