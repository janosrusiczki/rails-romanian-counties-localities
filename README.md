Rails Active Record migrations for Romanian counties and localities.

Run the `convert.rb` script if you want to regenerate the files.

The two files from the `result` directory can be used with the `migrations` after moving them to your `{RAILS_ROOT}/db/data/` directory. Please note that you'll likely have to create the data directory and that the migrations should be created and run in the suggested order. There are also sample `models` provided.

I have willingly ignored the regions field from the localities table as I think it is irrelevant.

The source SQL file comes from:

* http://skyweb.ro/2013/01/02/tabele-mysql-cu-judetele-si-localitatile-din-romania/
* https://docs.google.com/open?id=0B_Lv27CkZMYYS3QxREttdWtCbFU
