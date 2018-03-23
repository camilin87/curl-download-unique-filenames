# curl-unique-filenames  
Curl container to download a page with a unique filename. This image is based on [uzyexe/dockerfile-curl](https://github.com/uzyexe/dockerfile-curl).  

## Usage  

```bash
docker run --rm \
  -v ~/Downloads/tmp:/home \
  camilin87/curl-download-unique-filenames \
  https://www.google.com "google-"
```

The above script will download the Google homepage into `~/Downloads/tmp/google-2018-03-23-00-57-33.html`. Further executions will yield different timestamped filenames.  
