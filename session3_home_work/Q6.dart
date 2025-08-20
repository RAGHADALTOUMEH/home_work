/*Exercise 6: 
6. a) Create List animals with three values. 
b) Add a new animal, remove the last one, and update the second element. 
c) Print animals.first, animals.last, and animals.length.*/
void main() {
  List<String> animals = ['cat', 'dog', 'fish'];
  animals.add('rabbit');
  print(animals);
  animals.remove('rabbit');
  print(animals);
  animals[1] = 'butterfly';
  print(animals);
  print(animals[0]);
  print(animals[2]);
  print(animals.length);
}
