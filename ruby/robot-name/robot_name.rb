class Robot

  def name
    @name = random_name
  end

  def random_name
    ('A'..'Z').to_a.sample(2).join + rand.to_s[2..4]
  end
end
