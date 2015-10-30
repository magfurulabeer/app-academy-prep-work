class Book
  attr_accessor :title
  
  def title=(name)
  	no_cap = ['the','a','an','and', 'in', 'of']
  	words = name.split
  	words.each_index do |x|
      words[x].capitalize! unless no_cap.include?(words[x]) && x != 0	# Can be broken into 2-3 lines for readability
  	end
  	@title = words.join(' ')
  end
end

