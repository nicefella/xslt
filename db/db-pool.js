const sql = require('mssql/msnodesqlv8');
const dbConfig = require('./config');
// import msnodesqlv8 from 'msnodesqlv8';

const poolPromise = new sql.ConnectionPool(dbConfig)
  .connect()
  .then(pool => {
    console.log('Connected to MSSQL');
    return pool;
  })
  .catch(err => console.log('Database Connection Failed! Bad Config: ', err));

module.exports = poolPromise;
