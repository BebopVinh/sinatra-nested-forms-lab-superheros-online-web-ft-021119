class Hero
   attr_reader :name, :power, :bio

   ALL = []

   def initialize(hash)
      hash.each do |k,v|
         instance_variable_set("@#{k}", v) unless v.nil?
      end
      ALL << self
   end

   def self.all
      ALL
   end

   def self.clear
      ALL.clear
   end
end