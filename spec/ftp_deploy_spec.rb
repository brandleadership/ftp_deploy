require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe FtpDeploy::Base do
  
  before(:each) do
    @ftp_deploy = FtpDeploy::Base.new
  end
  
  it 'should have a default configuration' do
    @ftp_deploy.config.should_not be_nil
  end
  
  it 'should have the default port 21' do
    @ftp_deploy.config[:port].should == 21
  end
  
  it 'should have an empty default password' do
    @ftp_deploy.config[:password].should == nil
  end
  
  it 'should have an empty default host' do
    @ftp_deploy.config[:host].should == nil
  end
  
  it 'should have an empty default user' do
    @ftp_deploy.config[:user].should == nil
  end
end