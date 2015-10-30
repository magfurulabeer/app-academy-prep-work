class Dictionary
  attr_accessor :entries

  def initialize 
  	@entries = {}
  end

  def add(entry)
  	if entry.is_a?(Hash)
  	  @entries.merge!(entry)
  	else
  	  @entries[entry] = nil
  	end
  end

  def keywords
  	@entries.keys.sort
  end

  def include?(key)
  	@entries.include?(key)
  end

  def find(prefix)
  	list = {}
  	results = @entries.keys.find_all { |x| x.start_with?(prefix) }
  	results.each {|x| list[x] = @entries[x] }
  	list
  end

  def printable
  	prints = []
  	@entries.sort.each do |key,value|
  	  prints << "\[#{key}\] \"#{value}\""
  	end
  	prints.join("\n")
  end
end

@d = Dictionary.new
@d.add('fish' => 'aquatic animal')
puts  @d.find('fish')#.should == {'fish' => 'aquatic animal'}