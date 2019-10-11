module Actions
  class Deploy
    def self.run(application_name, environment)
      host = "https://deploy-bot.populate.tools"
      path = "/api/deploys/#{application_name}/#{environment}"

      response = HTTParty.post(host + path, {
        headers: {"Authorization" => "Token token=#{ENV["DEPLOY_BOT_TOKEN"]}"},
        debug_output: STDOUT,
      })
      puts response.body
    end
  end
end
