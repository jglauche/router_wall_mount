class Router < CrystalScad::Assembly

  def part(show)
    res = cube([440,130,45]).color("lightgrey")
    
    
    res
  end

	def threads_left
		holes =*ScrewThread.new(y:12,z:12,size:3,depth:6)	
		holes << ScrewThread.new(y:12,z:32,size:3,depth:6)	
		holes << ScrewThread.new(y:32,z:22,size:3,depth:6)	
	end

  def threads_right
    threads_left
  end
    
end
