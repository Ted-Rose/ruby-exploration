require 'bucket_store'

BucketStore.for("inmemory://bucket/path/file.xml").upload!("hello world")
BucketStore.for("inmemory://bucket/path/").list
