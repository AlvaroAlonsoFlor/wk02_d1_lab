class CodeClanStudent

  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end

  def name
    @name
  end

  def cohort
    @cohort
  end

  def change_name(name)
    @name = name
  end

  def change_cohort(cohort)
    @cohort = cohort
  end

  def talks
    return "Hello! I can talk!"
  end

  def favourite_language(language)
    return "I love #{language}!"
  end
end
