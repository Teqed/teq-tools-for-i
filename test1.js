//test1.js
var ibmdb = require('ibm_db');

ibmdb.open("DRIVER={DB2};DATABASE=sample;HOSTNAME=<hostname>;
UID=<user_id>;PWD=<password>;PORT=<port>;
PROTOCOL=TCPIP", function (err,conn) {
  if (err) return console.log(err);

  conn.query('select * from staff where id = ?', [10], function (err, data) {
    if (err) console.log(err);

    console.log(data);

    conn.close(function () {
      console.log('done');
    });
  });
});
