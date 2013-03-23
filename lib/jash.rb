class Jash
  def initialize(hsh)
    hsh.each do |key, val|
      if val.kind_of? Hash
        val = Jash.new(val)
      end
      self.class.send(:define_method, key) do
        val
      end
      self.class.send(:define_method, "#{key}=") do |new_val|
        if new_val.kind_of? Hash
          new_val = Jash.new(new_val)
        end
        self.class.send(:define_method, key) do
          new_val
        end
      end
    end
  end
end
