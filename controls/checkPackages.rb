describe package('php7.4') do
    it { should be_installed }
end
describe package('php-pear') do
    it { should be_installed }
end