var expect = require('chai').expect
var explore = require('../explore')

describe('util tests', function(){

	it('should pass this canary test', function() {
			expect(true).to.eq(true)
	});
	it('thisThing should be true', function() {
			expect(explore.thisThing).to.eq(true)
	});


});

describe('reverse tests', function(){

	it('should be a function', function() {
			expect(explore.reverse('hello')).to.eq('olleh')
	});
	it('thisThing should be true', function() {
			expect(explore.thisThing).to.eq(true)
	});
	

});