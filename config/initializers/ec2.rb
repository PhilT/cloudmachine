EC2_EU = 'eu-west-1.ec2.amazonaws.com'
credentials = YAML::load_file("#{Rails.root}/config/amazon.yml")['amazon']
EC2 = AWS::EC2::Base.new(:access_key_id => credentials['access_key_id'], :secret_access_key => credentials['secret_access_key'],  :server => EC2_EU)

