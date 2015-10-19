use ooc-unit
use ooc-base
use ooc-math
import math
import lang/IO

IntPoint2DTest: class extends Fixture {
	precision := 1.0e-5f
	point0 := IntPoint2D new (22, -3)
	point1 := IntPoint2D new (12, 13)
	point2 := IntPoint2D new (34, 10)
	point3 := IntPoint2D new (10, 20)
	init: func {
		super("IntPoint2D")
		this add("equality", func {
			point := IntPoint2D new()
//			expect(this point0, is equal to(this point0))
//			expect(this point0 equals(this point0 as Object), is true)
			expect(this point0 == this point0, is true)
			expect(this point0 != this point1, is true)
			expect(this point0 == point, is false)
			expect(point == point, is true)
			expect(point == this point0, is false)
		})
		this add("addition", func {
			expect((this point0 + this point1) x, is equal to(this point2 x))
			expect((this point0 + this point1) y, is equal to(this point2 y))
		})
		this add("subtraction", func {
			expect((this point0 - this point0) x, is equal to((IntPoint2D new()) x))
			expect((this point0 - this point0) y, is equal to((IntPoint2D new()) y))
		})
		this add("get values", func {
			expect(this point0 x, is equal to(22))
			expect(this point0 y, is equal to(-3))
		})
		this add("swap", func {
			result := this point0 swap()
			expect(result x, is equal to(this point0 y))
			expect(result y, is equal to(this point0 x))
		})
		this add("casting", func {
			value := "10, 20"
			expect(this point3 toString(), is equal to(value))
			expect(IntPoint2D parse(t"34,10") x, is equal to(this point2 x))
			expect(IntPoint2D parse(t"34,10") y, is equal to(this point2 y))
		})
		this add("float casts", func {
			point := point0 toFloatPoint2D()
			expect(point x, is equal to(22.0f) within(this precision))
			expect(point y, is equal to(-3.0f) within(this precision))
		})
	}
}
IntPoint2DTest new() run()
