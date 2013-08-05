Paperclip::Attachment.default_options[:preserve_files] = true
Paperclip::Attachment.default_options[:default_url] = '/assets/missing.png'
Paperclip::Attachment.default_options[:storage] = :fog
Paperclip::Attachment.default_options[:fog_public] = true
Paperclip::Attachment.default_options[:fog_host] = "https://s3.amazonaws.com/#{ENV['S3_BUCKET']}"
Paperclip::Attachment.default_options[:fog_directory] = ENV['S3_BUCKET']
Paperclip::Attachment.default_options[:fog_credentials] = { aws_access_key_id: ENV['S3_KEY'], aws_secret_access_key: ENV['S3_SECRET'], provider: 'AWS', region: 'us-east-1' }
