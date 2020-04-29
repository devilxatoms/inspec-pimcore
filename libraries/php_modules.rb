class PhpModules < Inspec.resource(1)
    name 'php_modules'

    # Restrict to only run on the below platforms (if none were given, all OS's supported)
    supports platform_family: 'debian'
    supports platform: 'ubuntu', release: '18.04'
  
    desc '
      Resource description ...
    '
  
    example '
      describe example_config do
        its("signal") { should eq "on" }
      end
    '

    # This method gets called whenever `describe cheeky_monkey`
    # gets called by the controls.
    def initialize(modules_array)
        @name = name
    end

   def modules
        inspec.command("php -m")
   end
    

  end
  