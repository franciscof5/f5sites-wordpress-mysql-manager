echo "LOCAL SERVER dumping a safety copy from database to: $LOCAL_SAFE_COPY_DIR..."
test -d $LOCAL_SAFE_COPY_DIR || mkdir -p $LOCAL_SAFE_COPY_DIR
mysqldump -u $MYSQL_USER_LOCAL -p$MYSQL_PASS_LOCAL --lock-tables=false --databases --add-drop-database --compatible=mysql4,no_table_options --default-character-set=utf8 $DATABASENAME | gzip -v > $LOCAL_SAFE_COPY_DIR/$DATABASENAME-local-safe-copy.sql.gz
