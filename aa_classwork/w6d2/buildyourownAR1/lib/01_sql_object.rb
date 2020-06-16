require_relative 'db_connection'
require 'active_support/inflector'
# NB: the attr_accessor we wrote in phase 0 is NOT used in the rest
# of this project. It was only a warm up.

class SQLObject
  def self.columns
    #question 2
    @columns ||= DBConnection.execute2("SELECT * FROM #{table_name} LIMIT 1").first.map(&:to_sym)
  end

  def self.finalize!
    #question 3
    self.columns.each do |column|
      self.define_method(column) do
          self.attributes[column]
      end

      self.define_method("#{column}=") do |new_val|
        self.attributes[column] = new_val
      end
    end
  end

  def self.table_name=(value) #question 1
    @table_name = value
  end
  
  def self.table_name
    @table_name ||= self.to_s.tableize
  end
  

  def self.all
    @data = DBConnection.execute("SELECT * FROM #{table_name}")
    self.parse_all(@data)
  end

  def self.parse_all(results)
    @parse_all = results.map { |result| self.new(result) }
  end

  def self.find(id)
    @data.each do |hash|
      return self.new(hash) if hash["id"] == id
    end
    nil
  end

  def initialize(params = {})
    params.each do |k, v|
      if self.class.columns.include?(k.to_sym)
        send("#{k}=", v)
      else
        raise "unknown attribute '#{k}'"
      end
    end
    # send(attributes)
    # raise "unknown attribute #{attr_name}"
  end

  def attributes
    @attributes ||= {}
  end

  def attribute_values
    attributes.map { |k, v| v }
  end
require 'byebug'
  def insert
    cols = self.class.columns
    col_names = cols.join(",")
    # debugger
    question_marks = (["?"] * cols.length).join(",")
    DBConnection.execute(<<-SQL, *col_names )
      INSERT INTO
        #{self.class.table_name} (col_names)
      VALUES
        #{question_marks}
    SQL
  end

  def update
    # ...
  end

  def save
    # ...
  end
end
