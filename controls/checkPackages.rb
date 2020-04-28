describe package('php7.4') do
    it { should be_installed }
end
describe package('php-pear') do
    it { should be_installed }
end
describe package('apache2') do
    it { should be_installed }
end
describe package('libapache2-mod-php7.4') do
    it { should be_installed }
end
describe package('mysql-client') do
    it { should be_installed }
end
describe package('nfs-common') do
    it { should be_installed }
end
describe package('git') do
    it { should be_installed }
end
describe package('binutils') do
    it { should be_installed }
end
describe package('make') do
    it { should be_installed }
end
describe package('ffmpeg') do
    it { should be_installed }
end
describe package('php7.4-gd') do
    it { should be_installed }
end

describe command('php -m | grep gd') do
    it { should exist }
    its('stdout') { should eq 'gd/\r/\n' }
end