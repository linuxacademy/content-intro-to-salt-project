mysql_book_db_create:
  mysql_database.present:
    - name: db-books
    - host: 10.0.1.102
    - connection_user: root
    - connection_pass: temppass
    - connection_charset: utf8
