class AttrAccessorObject
  def self.my_attr_accessor(*names)

    names.each do |var_name|

      define_method(var_name) do
        self.instance_variable_get("@#{var_name}")
      end
      
      define_method("#{var_name}=") do |new_val|
        self.instance_variable_set("@#{var_name}", new_val)
      end
    end
  end






  def name
    @name
  end

  def name=(new_name)
    @name = new_name
  end



end
