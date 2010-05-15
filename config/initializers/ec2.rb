credentials = YAML::load_file("#{Rails.root}/config/amazon.yml")['amazon']
EC2 = AWS::EC2::Base.new(:access_key_id => credentials['access_key_id'], :secret_access_key => credentials['secret_access_key']) #,  :server => EC2_URL)

