// Advantages of Singleton:
//
// Control over object creation: Singleton pattern provides a way to have strict control over object creation, ensuring that only one instance of a class is created throughout the application. This helps to ensure that the system remains in a consistent state and prevents unwanted duplication of resources.
// Global access: Singleton pattern allows global access to the instance of a class. This makes it easy to access the instance from anywhere in the application, without the need to pass the instance around as a parameter.
// Lazy initialization: Singleton pattern can be implemented in a way that the object is only created when it is actually needed, rather than being created at the start of the application. This can help to improve performance and reduce memory usage.
//
// Disadvantages of Singleton:
//
// Global state: Singleton pattern can introduce global state into the application, which can make the code harder to test and maintain. This is because changes to the state of the singleton can affect the behavior of other parts of the application.
// Hidden dependencies: Because the singleton is often used as a global object, it can lead to hidden dependencies between different parts of the code, which can make it harder to reason about the behavior of the system.
// Difficult to subclass: Singleton pattern can be difficult to subclass, because the constructor of the class is typically private or protected, and there is often no easy way to change the behavior of the class without modifying the original implementation.

class MySingleton{
  static final MySingleton _instance = MySingleton._internal();

  //method 1
  factory MySingleton(){
    return _instance;
  }

  //method 2
  static MySingleton get instance => _instance;



  MySingleton._internal();

  void introduce(){
    print("This is my singleton class");
  }
}

void main(){
  // MySingleton mySingleton = MySingleton();
  MySingleton mySingleton = MySingleton.instance;
  mySingleton.introduce();
}