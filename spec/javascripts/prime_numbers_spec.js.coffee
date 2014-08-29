//= require prime_numbers

describe 'isPrime', ->
  it 'should be true for prime numbers', ->
    isPrime(2).should.be.true
    isPrime(3).should.be.true
  it 'should be false for non-prime numbers', ->
    isPrime(4).should.be.false
    isPrime(9).should.be.false
  it 'should be false for 0 and 1', ->
    isPrime(0).should.be.false
    isPrime(1).should.be.false
