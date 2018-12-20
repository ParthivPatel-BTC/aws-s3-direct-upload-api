class UploadPresigner
  def self.presign(prefix, params)
    original_filename = params[:filename].original_filename
    extname = File.extname(original_filename)
    filename = "#{SecureRandom.uuid}#{extname}"
    upload_key = Pathname.new(prefix).join(filename).to_s

    creds = Aws::Credentials.new('AWS_ACCESS_KEY_ID', 'AWS_SECRET_ACCESS_KEY')
    s3 = Aws::S3::Resource.new(region: 'AWS_REGION', credentials: creds)
    obj = s3.bucket('BUCKET_NAME').object(upload_key)

    obj.upload_file(params[:filename].tempfile, {acl: 'public-read'})
    obj.public_url
  end
end