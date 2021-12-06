const mysql = require('mysql')
require('dotenv').config()

class Connection {
  constructor() {
    if (!this.pool) {
      console.log('creating mysql connection...')

      const config = {
        connectionLimit: 100,
        host: process.env.DB_HOST,
        user: process.env.DB_USER,
        password: process.env.DB_PASSWORD,
        database: process.env.DB_DEFAULT_SCHEMA
      }

      // const config = process.env.CLEARDB_DATABASE_URL

      this.pool = mysql.createPool(config)

      return this.pool
    }

    return this.pool
  }
}

const instance = new Connection()

module.exports = instance;