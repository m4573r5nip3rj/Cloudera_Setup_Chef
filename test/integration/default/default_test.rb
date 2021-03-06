# # encoding: utf-8

# Inspec test for recipe Cloudera_Automation::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

unless os.windows?
  # This is an example test, replace with your own test.
  describe user('root') do
    it { should exist }
  end
end

# This is an example test, replace it with your own test.
describe port(7180), :skip do
  it { should_not be_listening }
end

describe file('/root/deploy_new_cluster.py') do
  it { should be_file }
end

describe file '/etc/yum.repos.d/cloudera-manager.repo' do
  it { should exist }
end
