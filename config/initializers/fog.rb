CarrierWave.configure do |config|
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     'AKIAIU6534D5T3ES7QAA',                        # required
    aws_secret_access_key: '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',                        # required
    region:                'ap-northeast-2',                  # optional, defaults to 'us-east-1'
  }
  config.fog_directory  = 'interviewapp'                          # required
end