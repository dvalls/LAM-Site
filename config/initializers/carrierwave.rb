CarrierWave.configure do |config|
  config.fog_credentials = {
      :provider               => 'AWS',                        # required
      :aws_access_key_id      => 'AKIAIHRYJ3BR6C0CZ23A',                        # required
      :aws_secret_access_key  => 'NhtrY4kiLBnlggRPCEI4USURL2lUKPcST95TaeS1',                        # required
      :region                 => 'sa-east-1',                  # optional, defaults to 'us-east-1'
      #:host                   => 's3.example.com',             # optional, defaults to nil
      #:endpoint               => 'https://s3.example.com:8080' # optional, defaults to nil
  }
  config.fog_directory  = 'primaverabeta'                     # required
  config.fog_public     = false                                   # optional, defaults to true
  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
  config.fog_attributes = "#{Rails.root}/tmp/uploads"
end