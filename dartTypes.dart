//TYPES

//int = Integer
//double = Floating-point number
//num =
//bool
//String
//List-Array
//Map - object
//dynamic

void main() { //place connected logic within main function
  num score = 78;
  String grade;

  if (score >= 90) {
    grade = "A";
  } else if (score >= 80) {
    grade = "B";
  } else if (score >= 70) {
    grade = "C";
  } else if (score >= 60) {
    grade = "D";
  } else {
    grade = "F";
  }

  String rating;

  switch (grade) {
    case "A": rating = "Excellent"; break;
    case "B": rating = "Good"; break;
    case "C": rating = "Average"; break;
    case "D": rating = "Deficient"; break;
    case "F": rating = "Failing"; break;
  }

  print("Rating: $rating");

  print("Score: $score");
  print("Grade: $grade");
}
//or just write it in a for loop
//for( int beers = 99; beers > 0; beers--){
//  print("$beers bottles of beer on the wall, $beers bottles of beer.");
//  print("You take one down, pass it around... ");
//  print("${beers - 1} bottles of beer on the wall.\n");
//
//}



