class Utils
  def self.git_branch
    `git branch --show-current`.strip
  end

  def self.repository_url
    `git config --get remote.origin.url`.strip
  end

  def self.git_project
    project = repository_url.split(":").last.split("/").last
    project.strip.gsub(/\.git/, "").strip
  end

  def self.git_organization
    repository_url = `git config --get remote.origin.url`
    repository_url.split(":").last.split("/").first.strip
  end
end
