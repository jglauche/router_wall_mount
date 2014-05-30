class Mount < CrystalScad::Printed
	
	def output
	  res = part(false)
	  res += part(false).mirror(x:1).translate(x:23)
	end
	
	def part(show)
	  router = Router.new
		res = cube([@thickness=10,40,45])	
		bolts = create_bolts("left",res,router,bolt_height:16)
		res -= bolts
		res += bolts if show
		
		res += cube([x=40,y=40,z=7]).translate(x:-x)
    res -= cylinder(d:6,h:z+0.2).translate(x:-x/2,y:y/2,z:-0.1)
		
		res += router.show.translate(x:@thickness)  if show
		
		res
	end

end	
