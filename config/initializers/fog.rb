CarrierWave.configure do |config|
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     "AKIAJHUI7O2HEOV6WCDA",                        # required
    aws_secret_access_key: "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",                        # required
    region:                'ap-northeast-1',                  # optional, defaults to 'us-east-1'
  }
  config.fog_directory  = 'pet-img'                          # required
end