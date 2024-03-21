
void main(List<String> arguments) {
  //var is used to declare variables the type is inferrer by the dart ,
//It's a keyword that allows for us to declate varibles without exlicity specifying the type 
  var name = "Almaz"; //as you I can use for everthing with keyword and dart infers type of name as String
  var height = 29.0; 

//dynamic is a special type in Dart that represents any type.we can use dynamic for any Variablese
dynamic variable = 'Hello'; // 'variable' can hold a String
variable = 123;             // 'variable' can now hold an int
 //
 const pi = 3.14; // Declaring a constant 'pi'
const List<int> numbers = [1, 2, 3]; // Declaring a constant list

//const is used to declare variables whose values cannot be changed once they are initialized.
//It's similar to final, but const variables must be initialized with constant values at compile-time.
//const variables are implicitly final.
//const can also be used to create constant constructors, which create immutable instances of classes.
//final is used to declare variables whose value remains constant throughout their lifetime.
//Once a final variable is assigned a value, it cannot be reassigned to another value.
//final variables must be initialized exactly once, 

//and conts works before the comilitaire final works during the comilitaire
final String nam = "Nurislam";
final nam = "Azar"; // as you see I tryed to change from Nurislam to azat but that did not happen 
  print( "num");
}
