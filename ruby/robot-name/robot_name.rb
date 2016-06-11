class Robot
  @@names = []
  attr_reader :name

  def name
    new_name = random_name
    until @@names.include?(new_name) == false
      new_name = random_name
    end
    @@names << new_name
    @name ||= new_name
  end

  def unique_name?
    @@names.include?(@name)
  end

  def reset
    @@names.delete(@name)
    @name = nil
  end

  private

    def random_name
      ('A'..'Z').to_a.sample(2).join + rand.to_s[2..4]
    end
end
