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