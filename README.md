# youtube-search-example

This is a demo app for [youtube-search](https://github.com/laruby2/youtube-search). It makes a simple API call to youtube, and saves search result to database. A user can keep search words and check daily search result on the pages. Each word has its own show page, and it has 5 search results. Currently by Heroku scheduler it runs a rake task and takes snapshot of search once a day. And (even though we are not sure to keep this feature in the future) it still has a button on the page to run a search. There are features to build and nothing much has been decided. We became to start this project because we need a Rails app to use the gem for developing `youtube-search` gem.

Push to `master` branch, then it will be automatically deployed to Heroku. [youtube-search-example.herokuapp.com](https://youtube-search-example.herokuapp.com/)

### How to run

```
git clone
cd
bundle install
rails s
```

### How to contribute

Feel free to open pull requests or issues, and participate the discussion. This is being developed as a group project of LA Eastside Ruby Rails Study Group. 
