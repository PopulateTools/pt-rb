# frozen_string_literal: true

module Actions
  class GobiertoDataImport
    def self.run(args)
      env_var = "GOBIERTO_DATA_ADMIN_TOKEN"
      if ENV[env_var].nil?
        puts
        puts "[ERROR] Please setup the environment variable #{env_var}"
        puts
        exit(-1)
      end

      import_command = <<~COMMAND
        curl -X POST \
             -H "Authorization: Bearer #{ENV[env_var]}" \
             -H 'Content-Type: multipart/form-data' \
             -F 'dataset[data_file]=@#{File.expand_path(args[3])}' \
             -F 'dataset[schema_file]=@#{File.expand_path(args[4])}' \
             -F 'dataset[name]=#{args[1]}' \
             -F 'dataset[table_name]=#{args[2]}' \
             -F 'dataset[csv_separator]=,' \
             https://#{args[0]}/api/v1/data/datasets
      COMMAND

      system(import_command)
    end
  end
end
