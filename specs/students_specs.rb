require("minitest/autorun")
require("minitest/rg")
require_relative("../students.rb")

class TestCodeClanStudent < Minitest::Test
  def test_student_name
    student = CodeClanStudent.new("Alvaro", "E24")
    assert_equal("Alvaro", student.name)
  end

  def test_student_cohort
    student = CodeClanStudent.new("Jesse", "E22")
    assert_equal("E22", student.cohort)
  end

  def test_change_name
    student = CodeClanStudent.new("Alvaro", "E24")
    student.change_name("James")
    assert_equal("James", student.name)
  end

  def test_change_cohort
    student = CodeClanStudent.new("Alvaro", "E24")
    student.change_cohort("E22")
    assert_equal("E22", student.cohort)

  end

  def test_student_talks
    student = CodeClanStudent.new("Alvaro", "E24")
    assert_equal("Hello! I can talk!", student.talks)
  end

  def test_favourite_programming_language
    student = CodeClanStudent.new("Jesse", "E22")
    assert_equal("I love Ruby!", student.favourite_language("Ruby"))
  end

end
