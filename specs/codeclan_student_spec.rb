require('minitest/autorun')
require('minitest/rg')
require_relative('../codeclan_student')

class TestStudent < MiniTest::Test

  def test_student_name
    student1 = Student.new("Olga", 18)
    assert_equal("Olga", student1.student_name)
  end

  def test_student_cohort
    student1 = Student.new("Olga", 18)
    assert_equal(18, student1.cohort)
  end

  def test_set_student_name
    student1 = Student.new("Olga", 18)
    student1.set_student_name("Olga Maunsell")
    assert_equal("Olga Maunsell", student1.student_name)
  end

  def test_set_cohort
    student1 = Student.new("Olga", 18)
    student1.set_cohort(17)
    assert_equal(17, student1.cohort)
  end

  def test_talk
    student2 = Student.new("Richard", 18)
    student2.talk
    assert_equal("Hello", student2.talk)
  end

  def test_favourite_language
    student2 = Student.new("Richard", 18)

    assert_equal("I love Ruby", student2.favourite_language("Ruby"))
  end
#   Create a Class called Student that takes in a name (String) and a cohort (integer) when an new instance is created.
# Create a couple of Getter methods, one that returns the name property and one that returns the cohort property of the student.
# Add in Setter methods to update the students name and what cohort they are in.
# Create a method that gets the student to talk (eg. Returns "I can talk!).
# Create a method that takes in a students favourite programming language and returns it as part of a string (eg. student1.say_favourite_language("Ruby") -> "I love Ruby").

end
