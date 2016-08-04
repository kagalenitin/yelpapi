# Leads API Test Package

This package provides specs used to test various leads API features at the integration level

## Setup Ruby (The latest version of ruby is > 2.0 which is recomended)
```
rvm https://rvm.io/rvm/install.
```

### 2. Install gems. (should be infrequent after first time)
```
bundle install
```
### 3. To Run through a given test use 'rake leads_api:<task>'
```
rake leads_api:leads
``` 
This will run through the leads prefund flow, for example.

### 4. Running through a scenario filtered by tags 'rake leads_api:<task> tag'
```
rake leads_api:newyork valid
```
Runs the NY Offer Codes scenario with only the leads that have valid offer codes

### 5. Run all suites in parallel
```
rake leads_api:all_tasks
```