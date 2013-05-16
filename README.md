Rails Active Record migrations for Romanian counties and localities

Run the `convert.rb` script if you want to regenerate the files.

The files from the `result` directory can be used with the migrations provided after moving them to {RAILS_ROOT}/db/data/ - please note that the migrations should be run in the suggested order. There are also sample models provided.

The source SQL file comes from:

* http://skyweb.ro/2013/01/02/tabele-mysql-cu-judetele-si-localitatile-din-romania/
* https://docs.google.com/open?id=0B_Lv27CkZMYYS3QxREttdWtCbFU