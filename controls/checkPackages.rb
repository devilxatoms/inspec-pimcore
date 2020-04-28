case os[:family]
when 'ubuntu'
  describe package('nano') do
    it { should be_installed }
  end
when 'redhat'
  describe package('mysql-client') do
    it { should be_installed }
  end
end