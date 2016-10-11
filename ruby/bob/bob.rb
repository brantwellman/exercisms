class Bob

  def hey(comment)
    remark = comment_analysis(comment)
    case remark
    when "empty"
      "Fine. Be that way!"
    when "yelling"
      'Whoa, chill out!'
    when 'question'
      'Sure.'
    else
      'Whatever.'
    end
  end

  def comment_analysis(letters)
    if letters.upcase == letters
      "yelling"
    elsif letters[-1] == "?"
      "question"
    elsif letters = nil
      "empty"
    end
  end
end
