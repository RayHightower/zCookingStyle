# Snippets for cooking-show-style "live" coding
# Hello World
  alert = UIAlertView.new
  alert.message = "Hey 8th Light University!"
  alert.show

# Rakefile additions for HELLO
  @iPhone_provision = '/Users/rth/Library/MobileDevice/Provisioning Profiles/24D7E3FB-2D71-4D3E-9809-07ECBE440247.mobileprovision'
  @iPad_provision = '/Users/rth/Library/MobileDevice/Provisioning Profiles/036FE82B-C4D9-4033-B892-F66B24F22EF1.mobileprovision'
  app.provisioning_profile = @iPhone_provision
  app.codesign_certificate = 'iPhone Developer: Raymond T Hightower (Z9NP4QZ4AE)'
  app.device_family = :iphone
  app.icons << 'hello.jpg'

# Rakefile additions for FIZZBUZZ
  @iPhone_provision = '/Users/rth/Library/MobileDevice/Provisioning Profiles/24D7E3FB-2D71-4D3E-9809-07ECBE440247.mobileprovision'
  @iPad_provision = '/Users/rth/Library/MobileDevice/Provisioning Profiles/036FE82B-C4D9-4033-B892-F66B24F22EF1.mobileprovision'
  app.provisioning_profile = @iPhone_provision
  app.codesign_certificate = 'iPhone Developer: Raymond T Hightower (Z9NP4QZ4AE)'
  app.device_family = :iphone
  app.icons << 'f.png'

# First test for fizzbuzz
  it 'should return the integer if it is not fizzable or buzzable' do
    FizzBuzzViewController.calc(28).should == 28
  end

# Additional tests for fizzbuzz
  (1..100).each do |another_number|
    if another_number % 15 == 0
      it 'should return buzz for multiples of 15' do
         FizzBuzzViewController.calc(another_number).should == 'fizzbuzz'
      end
    elsif another_number % 3 == 0
      it 'should return fizz for multiples of 3' do
         FizzBuzzViewController.calc(another_number).should == 'fizz'
      end
    elsif another_number % 5 == 0
      it 'should return buzz for multiples of 5' do
         FizzBuzzViewController.calc(another_number).should == 'buzz'
      end
    else
      it 'should return the original number' do
        FizzBuzzViewController.calc(another_number).should == another_number
      end
    end
  end


