require 'spec/spec_helper'

describe Instance do
  before(:each) do
    AWS.stub!(:new).and_return mock(AWS, :describe_instances => YAML::load_file('spec/describe_instances.yml'))
  end

  describe 'all' do
    it 'should create entry in table for non-existent instances' do
      Instance.count.should == 3
    end

    it 'should populate virtual fields from ec2 request' do
      instance = Instance.first
      instance.instance_id.should == 'i-aa2a38c2'
      instance.state.should == 'running'
      instance.dns.should == 'ec2-174-129-180-37.compute-1.amazonaws.com'
      instance.launch_at.should == DateTime.new(2010, 2, 4, 14, 9, 59)
      instance.zone.should == "us-east-1b"
      instance.monitored?.should be_true
      instance.ip.should == '174.129.180.37'
    end
  end
end

