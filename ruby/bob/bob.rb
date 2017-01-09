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
    sanitized = sanitize(letters).strip
    if sanitized == ''
      'statement'
    elsif sanitized == '?'
      'question'
    elsif sanitized.upcase == sanitized
      "yelling"
    elsif sanitized[-1] == "?"
      "question"
    elsif sanitized = nil
      "empty"
    end
  end

  def sanitize(remark)
    remark.gsub(/\d|,%^*@$\(/, ' ')
  end
end
