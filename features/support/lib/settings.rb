module Settings
  def self.data
    @data ||= YAML.load(File.open('config/settings.yml'))
  end

  def self.user
    @user = data[:user]
  end
end
