# FAKEFILTER
## _To filter disposable email_

##### fake_filter is made by reference of fakefilter node module
Reference: https://github.com/7c/fakefilter


## Installation

add your gemfile

```sh
gem 'fake_filter'
```

For production environments...

# Usage


### Check Disposable email
```sh
FakeFilter.is_disposable_eamil?('user@example.com')
```

### Get Disposable emails list as json

```sh
FakeFilter.json_data
```


