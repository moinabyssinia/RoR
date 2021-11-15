### Modules

- Similar to classes - they hold methods - but they cannot be instantiated 
- But we can share methods between classes - modules can be included into classes
- For instance when we want to reuse methods in certain classes and keep them in a 
central place

- namespace: when a module is used as a container for objects
- use cameCase for naming modules
- what is the difference between ruby core and ruby standard library
- takeaway: the standard OOP uses inheritance where instances of classes or subclasses inherit methods from the original class and whatever but this might be limited as other unrelated classes or objects might share the same method and may need to access it - this is rectified by using modules which don't necessarily require any two classes to belong to the same parent 
- Mixin: is simply adding access to multiple modules withing a class 

### questions 
- why do we need to include the each method in the enumerable module?
- why do we use '@' in the included.rb to acces the fetch_count?
- clarify the extend.rb file and the code inside