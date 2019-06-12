class Rsg
  def self.get
    (0...8).map { (65 + rand(26)).chr }.join
  end
end
