export default {
    username: process.env.DB_USERNAME,
    password: process.env.DB_PASSWORD,
    database: process.env.DB_DATABASE,
    host: process.env.DB_SERVER,
    port: process.env.DB_PORT,
    dialect: process.env.DB_PROVIDER,
    logging: process.env.NODE_ENV === 'development' ? console.log : false
}
