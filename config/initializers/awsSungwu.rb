CarrierWave.configure do |config|                     # required
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     'AKIAIPU3WOXPPYADOYQQ',                        # required
    aws_secret_access_key: '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',                        # required
    region:                'ap-northeast-2',                  # optional, defaults to 'us-east-1'
    host:                  's3.example.com',             # optional, defaults to nil
    endpoint:              'https://s3.ap-northeast-2.amazonaws.com' # optional, defaults to nil
  }
  config.fog_directory  = 'squall'                          # required
  config.fog_public     = true                                       # optional, defaults to true
  config.fog_attributes = {} # optional, defaults to {}
end
