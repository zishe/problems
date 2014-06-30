class SuperFoo

  attr_accessor :data

  def initialize
    @data = {}
  end

  def self.data_accessor(*args)
    [*args].each do |m|
      define_method "#{m}=" do
        |v| @data[m] = v
      end
      define_method m { @data[m] }
    end
  end

end
