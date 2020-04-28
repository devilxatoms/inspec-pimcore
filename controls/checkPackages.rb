control 'check-system-packages' do
    impact 1
    title 'system is up-to-date'
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
end

control 'check-php-packages' do
    describe package('php7.4-gd') do
        it { should be_installed }
    end
    describe package('php7.4-xml') do
        it { should be_installed }
    end
    describe package('php7.4-opcache') do
        it { should be_installed }
    end
    describe package('php-imagick') do
        it { should be_installed }
    end
    describe package('php7.4-bcmath') do
        it { should be_installed }
    end
end

control 'check-modules-enabled' do
    describe command('php -m | grep gd') do
        its('stdout') { should match 'gd' }
    end
end

