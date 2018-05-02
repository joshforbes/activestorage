require 'test_helper'

class SampleTest < ActiveSupport::TestCase
  test 'failure1' do
    Sample.create(file: build_sample_blob)
  end

  test 'failure2' do
    Sample.create(file: build_sample_blob)
  end

  test 'failure3' do
    Sample.create(file: build_sample_blob)
  end

  test 'failure4' do
    Sample.create(file: build_sample_blob)
  end

  def build_sample_blob
    ActiveStorage::Blob.new(
      filename: 'hello.txt',
      content_type: 'text/plain',
      metadata: { identified: true },
      byte_size: 6,
      checksum: 'lS0sVtBIWVgzZ0e83ZhZDQ=='
    )
  end
end
