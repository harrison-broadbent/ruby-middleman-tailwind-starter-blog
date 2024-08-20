module StringHelpers
  def humanize(string)
    delimiters = ["_", "-"]
    string.to_s.split(Regexp.union(delimiters)).join(" ")
  end

  def titleize(string)
    delimiters = ["_", "-"]
    string.to_s.split(Regexp.union(delimiters)).map(&:capitalize).join(" ")
  end
end
