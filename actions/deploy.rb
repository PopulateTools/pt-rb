module Actions
  class Deploy
    def self.run(application_name, environment)
      uri = URI.parse("https://deploy-bot.populate.tools/api/deploys/#{application_name}/#{environment}")

      https = Net::HTTP.new(uri.host, uri.port)
      https.use_ssl = true
      request = Net::HTTP::Post.new(uri.path, initheader = {"Authorization" => "Token token=#{ENV["DEPLOY_BOT_TOKEN"]}"})
      response = https.request(request)
      puts response.body
    end
  end
end
