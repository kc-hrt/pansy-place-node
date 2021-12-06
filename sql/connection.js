const mysql = require('mysql')
require('dotenv').config()

class Connection {
  constructor() {
    if (!this.pool) {
      console.log('creating mysql connection...')

      const config = {
        connectionLimit: 100,
        host: "us-cdbr-east-04.cleardb.com",
        user: "ba8176c40a660d",
        password: "072c5874",
        database: "heroku_9f7809ef0ff6ff2"
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