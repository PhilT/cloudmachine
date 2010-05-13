class Instance < ActiveRecord::Base
  def self.all
    db_instances =
    super.each do |instance|

      ec2.describe_instances
      i['reservationSet']['item'].first['instancesSet']['item'].first['instanceId']
    end
  end

  def state

  end

  def dns

  end

  def launch_at

  end

  def zone

  end

  def monitored?

  end

  def ip

  end
end

