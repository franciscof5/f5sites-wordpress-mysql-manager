echo "Local importing remote database $DATABASENAME tables $TABLES_SELECTED in $LOCAL_TEMP_DIR..."
mysql -u $MYSQL_USER_LOCAL -p$MYSQL_PASS_LOCAL $DATABASENAME < $LOCAL_TEMP_DIR/$DATABASENAME$TABLES_SELECTED-remote.sql
