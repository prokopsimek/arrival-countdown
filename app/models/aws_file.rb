# Amazon web services file handling
class AwsFile
  attr_reader :aws_region, :aws_bucket_name
  attr_accessor :aws_bucket_key

  def initialize(aws_bucket_key)
    @aws_bucket_key = aws_bucket_key
    @aws_bucket_name = DEFAULT_AWS_BUCKET
    @aws_region = DEFAULT_AWS_REGION
    @s3 = Aws::S3::Resource.new(region: DEFAULT_AWS_REGION)
    @remote_file = @s3.bucket(DEFAULT_AWS_BUCKET).object(aws_bucket_key)
  end

  def self.all
    @all_objects ||= Aws::S3::Resource.new(region: DEFAULT_AWS_REGION).bucket(DEFAULT_AWS_BUCKET).objects
  end

  def download_url
    "https://#{AWS_BUCKET_ENDPOINTS.fetch(aws_bucket_name)}/#{aws_bucket_key}"
  end

end
