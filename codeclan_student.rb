class Student

  def initialize(student_name, cohort)
    @student_name = student_name
    # add .to_i() so that it handles if 18 or "18" passed
    @cohort = cohort.to_i()
  end

  def student_name
    return @student_name
  end

  def cohort
    return @cohort
  end

  def set_student_name(new_name)
    @student_name = new_name
  end

  def set_cohort(new_cohort)
    @cohort = new_cohort
  end

  def talk
    return "Hello"
  end

  def favourite_language(language)
    return "I love #{language}"
  end
end
