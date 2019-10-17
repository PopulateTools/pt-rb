module Actions
  class Deploy
    def self.run(application_name, environment)
      url = "https://deploy-bot.populate.tools/api/deploys/#{application_name}/#{environment}"

      response = HTTParty.post(url, {
        headers: {"Authorization" => "Token token=#{ENV["DEPLOY_BOT_TOKEN"]}"},
        debug_output: STDOUT,
      })
      puts response.body
    end
  end
end
