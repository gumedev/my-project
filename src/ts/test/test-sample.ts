
import assert = require('assert');
import Sample = require("../main/sample");

describe(" # Sample ",()=>{
    context(" ## context ",()=>{

	let name = "tom";
	let age = 25;

	let sample = new Sample(name,age);

	it(" ### getName() ", ()=>{
	    const expectedName = "tom";
	    assert.ok(sample.getName() === expectedName);
	});
	it(" ### getAge() ", ()=>{
	    const expectedAge = 25;
	    assert.ok(sample.getAge() === expectedAge);
	});
    });
});
