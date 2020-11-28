class Settings{

  bool isGlutenFree;
  bool isLactoseFree;
  bool isVegan;
  bool isVegetarian;

  Settings({
    this.isGlutenFree = false,
    this.isLactoseFree = false,
    this.isVegan = false,
    this.isVegetarian = false,
  });


  @override
  String toString() {
    return """isGlutenFree = $isGlutenFree 
      isGlutenFree = $isLactoseFree 
      isGlutenFree = $isVegan 
      isGlutenFree = $isVegetarian""";
  }

}