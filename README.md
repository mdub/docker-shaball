# docker-shaball

This little script helps you bundle up a bunch of Docker images for
distribution e.g. to S3.

Sample usage:

  ```shell
  $ docker-shaball nginx:1.9 ruby:2.2
  f5fe78d69d93b719109341295a024b62c84ebc28.tar.gz
  ```

The named images are exported from your local Docker daemon using `docker save`, and saved as a `CHECKSUM.tar.gz` archive. The archive file-name includes a checksum of a "manifest" formed using the named Docker images and the corresponding IDs.  Specify the `--manifest` flag to see the manifest:

  ```shell
  $ docker-shaball --manifest nginx:1.9 ruby:2.2
  nginx:1.9 72d73c46937aaf8ca1efe566cac0564a05a0f1aeaef770658c8201726cfff50b
  ruby:2.2 9372b27f3abf65e96955894809adf406afad67f1208eaa7600b9bf2898c09c51
  ```
