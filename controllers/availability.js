const mysql = require('mysql')
const pool = require('../sql/connection')
const { handleSQLError } = require('../sql/error')

const getAvailability = (req, res) => {
  // Select  Availbability
  pool.query("select crops.`crop_id`, plants.`plant_name`, plants.`plant_variant`, plants.`plant_color`, crops.`available_quantity` from crops join plants on crops.`plant_id` = plants.`id` order by plants.`plant_name`, plants.`plant_variant`, plants.`plant_color`;", (err, rows) => {
    if (err) return handleSQLError(res, err)
    return res.json(rows);
  })
};


module.exports = { getAvailability }

