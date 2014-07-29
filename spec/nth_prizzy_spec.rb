require ('rspec')
require ('nth_prizzy')

describe ('prizzy') do
  it('will tell me that 2 is the first prime number') do
    expect(prizzy(1)).to(eq("2 is the 1st prime number."))
  end
  it('will tell me that 29 is the tenth prime number') do
    expect(prizzy(10)).to(eq("29 is the 10th prime number."))
  end
  it('will tell me that 3 is the first prime number') do
    expect(prizzy(2)).to(eq("3 is the 2nd prime number."))
  end
end
