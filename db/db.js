// db.js
const { poolPromise } = require('./db-pool');

const runSqlServerQuery = async (sql) => {
  try {
    const pool = await poolPromise;
    const result = await pool.request()
      //   .input('input_parameter', sql.NVarChar, params)
      .query(sql);
    return result.recordset;
  } catch (err) {
    console.error('SQL error', err);
    throw err;
  }
}

module.exports = { runSqlServerQuery };




