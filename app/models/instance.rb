class Instance < ActiveRecord::Base
  belongs_to :app

  after_create :start
  before_destroy :stop

  def start
    Docker.url = Settings.docker_url
    image = self.app.image ? self.app.image : 'phusion/baseimage'
    container = Docker::Container.create('Cmd' => ['/sbin/my_init', '--enable-insecure-key'], 'Image' => image, 'ExposedPorts' => {'22/tcp' => {} })
    puts container
    self.available = false
    self.container_id = container.id
    self.save
    container.start!('PortBindings' => { '22/tcp' => [{ 'HostPort' => (20000 + self.id).to_s }]})
    #url = Settings.platform_host + '/apps/validate_vm'
    #verify_command = 'curl --data \"container_id=#{self.container_id}\" #{url}'
    #container.run(verify_command, 300)
  end

  def make_available
    self.available = true
    self.save
  end

  def stop
    Docker.url = Settings.docker_url
    container = Docker::Container.get(self.container_id)
    container.stop
  end
end