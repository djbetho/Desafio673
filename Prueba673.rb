class Persona
      attr_reader :first_name, :last_name
      # Inicia el contrusctor de la clase Persona
      def initialize(first_name, last_name)
        @first_name = first_name
        @last_name = last_name
      end
    def talk
     puts "¡Método talk de la clase Person!"
    end
    def introduce
      puts "¡Método introduce de la clase Person!"
    end
end
    # Crea la clase Teacher
    class Teacher
    # Inicia el contrusctor de la clase Teacher
      def initialize(first_name, last_name)
      @persona = Persona.new(first_name, last_name)
      end
    # Crea el metodo talk
      def talk
      puts "¡Bienvenidos a la clase de programación con Ruby!"
      end
    # Crea el metodo introduce
    def introduce
    puts "Hola alumnos. Mi nombre es #{@persona.first_name} #{@persona.last_name}."
    end
   end
# Las subclases Student y Parent heredan los atributos y métodos de Persona. 
# Crea la Subclase Studen y Persona
class Student < Persona
  def talk
    puts "Aquí es la clase de programación con Ruby?"
  end
  def introduce
    puts "Hola profesor. Mi nombre es #{@first_name} #{@last_name}."
  end
end
class Parent < Persona
  def talk
    puts "¿Aquí es la reunión de apoderados?"
  end
  def introduce
    puts "Hola. Soy uno de los apoderados. Mi nombre es #{@first_name} #{@last_name}."
  end
end
# Crear instancia de Teacher
teacher = Teacher.new("Cesar", "Osses")
teacher.introduce
teacher.talk
# Crear instancia de Student
student = Student.new("Ruperto", "Bugueño")
student.introduce
student.talk

# Crear instancia de Parent
parent = Parent.new("Juan", "Bugueño")
parent.introduce
parent.talk
 