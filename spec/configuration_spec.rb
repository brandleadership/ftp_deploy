require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe FtpDeploy::Configuration do
  
  it 'should access value with symbol as key' do
    config = FtpDeploy::Configuration.new
    config['myKey'] = 'myValue'
    config[:myKey].should == 'myValue'
  end
  
  it 'should access value with string as key' do
    config = FtpDeploy::Configuration.new
    config['myKey'] = 'myValue'
    config['myKey'].should == 'myValue'
  end
  
  it 'should be configurable with hash' do
    config = FtpDeploy::Configuration.new 'myStringKey' => 'myStringValue'
    config[:myStringKey].should == 'myStringValue'
  end
  
  it 'should be configurable in a block' do
    config = FtpDeploy::Configuration.new do
      set :myKey, 'myValue'
    end
    config[:myKey].should == 'myValue'
  end
  
end