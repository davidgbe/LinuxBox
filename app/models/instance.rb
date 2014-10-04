class Instance < ActiveRecord::Base
  belongs_to :app

  after_create :start
  before_destroy :stop

  def start
    Docker.url = Settings.docker_url
    container = Docker::Container.create('Cmd' => ['/sbin/my_init'], 'Image' => 'phusion/baseimage')
    self.container_id = container.id
    self.save
    container.start
  end

  def stop
    Docker.url = Settings.docker_url
    container = Docker::Container.get(self.container_id)
    container.stop
  end
end