//  m2.js
define(['m1'],function(m1){
	var mul=function(a,b){
		var result=0;
		for (var i = 0; i < a; i++) {
			result=m1.add(result,b);
		};
		return result;
	};
	
	return {
		mul:mul
	};
});