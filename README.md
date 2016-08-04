# Yelp API Test Package


## Setup Ruby (The latest version of ruby is > 2.0 which is recomended)
```
rvm https://rvm.io/rvm/install.
```

### Install gems. (should be infrequent after first time)
```
bundle install
```

### yelp_api.yml
``` 
Sign up for a yelp developer account and get the keys: consumer key, consumer secret, token, and token secret. Add to the file.
````

### Run the test:
```
rspec spec/requests/yelp_search_spec.rb
```
