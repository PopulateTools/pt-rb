module Actions
  class Deploy
    def self.run(application_name, environment)
      env_var = "DEPLOY_BOT_TOKEN"
      if ENV[env_var].nil?
        puts
        puts "[ERROR] Please setup the environment variable #{env_var}"
        puts
        exit(-1)
      end
      uri = URI.parse("https://deploy-bot.populate.tools/api/deploys/#{application_name}/#{environment}")

      https = Net::HTTP.new(uri.host, uri.port)
      https.use_ssl = true
      request = Net::HTTP::Post.new(uri.path, initheader = {"Authorization" => "Token token=#{ENV[env_var]}"})
      response = https.request(request)
      puts response.body
    end
  end
end
