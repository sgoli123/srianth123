// Define a base class 'Animal' which encapsulates common properties and methods
class Animal {
    private String name;

    public Animal(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void makeSound() {
        System.out.println("Some generic animal sound");
    }
}

// Define a 'Dog' class that inherits from 'Animal'
class Dog extends Animal {
    public Dog(String name) {
        super(name);
    }

    @Override
    public void makeSound() {
        System.out.println("Woof Woof");
    }
}

// Define a 'Cat' class that inherits from 'Animal'
class Cat extends Animal {
    public Cat(String name) {
        super(name);
    }

    @Override
    public void makeSound() {
        System.out.println("Meow Meow");
    }
}

// Functional interface with a method that takes an Animal and returns a String
@FunctionalInterface
interface AnimalAction {
    String performAction(Animal animal);
}

public class Main {
    public static void main(String[] args) {
        // Create instances of Dog and Cat
        Animal dog = new Dog("Buddy");
        Animal cat = new Cat("Whiskers");

        // Demonstrate polymorphism
        dog.makeSound(); // Outputs: Woof Woof
        cat.makeSound(); // Outputs: Meow Meow

        // Use lambda functions to define behavior for the AnimalAction interface
        AnimalAction feed = (animal) -> animal.getName() + " is eating";
        AnimalAction play = (animal) -> animal.get

