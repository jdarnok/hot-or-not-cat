CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
      provider:              'AWS',                        # required
      aws_access_key_id:     Rails.application.secrets.s3_access_key_id,                        # required
      aws_secret_access_key: Rails.application.secrets.s3_secret_access_key,                        # required
      region:                Rails.application.secrets.s3_region,                  # optional, defaults to 'us-east-1'
      # host:                  's3.example.com',             # optional, defaults to nil
      # endpoint:              'https://s3.example.com:8080' # optional, defaults to nil
  }
  config.fog_directory  = Rails.application.secrets.s3_bucket                         # required
  config.fog_public     = false                                        # optional, defaults to true
  config.fog_attributes = { cache_control: "public, max-age=#{365.day.to_i}" } # optional, defaults to {}
end