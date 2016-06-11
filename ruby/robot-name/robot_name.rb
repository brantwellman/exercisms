class BookKeeping
  VERSION = 2
end

class Robot
  @@names = []

  def name
    new_name = random_name
    while duplicate_name?(new_name)
      new_name = random_name
    end
    @@names << new_name
    @name ||= new_name
  end

  def reset
    @@names.delete(@name)
    @name = nil
  end

  private

    def duplicate_name?(test_name)
      @@names.include?(test_name)
    end

    def random_name
      ('A'..'Z').to_a.sample(2).join + rand.to_s[2..4]
    end
end
