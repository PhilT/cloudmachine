class Instance < ActiveRecord::Base
  def self.all
    db_instances = super

    instances = []
    # i['reservationSet']['item'].first['instancesSet']['item'].first['instanceId']
    reservation_set_items = EC2.describe_instances['reservationSet']['item']
    reservation_set_items.each do |item|
      instance = item['instancesSet']['item'].first
      instances << Instance.find_or_create_by_instance_id(instance['instanceId'])
    end
    instances
  end

  def self.count
    EC2.describe_instances['reservationSet']['item'].size
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

