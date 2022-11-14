import mssql from 'mssql';
import { environment } from './environments/environment';

export class Db {

    private dbConnection: any;

    private dbConfig: any = {
        server: environment.db_server,
        user: environment.db_user,
        database: environment.db_name,
        password: environment.db_password,
        pool: {
            max: 10,
            min: 0,
            idleTimeoutMillis: 30000
        },
        options: {
            encrypt: true, // for azure
            trustServerCertificate: true // change to true for local dev / self-signed certs
        }        
    }

    constructor() {
        //this.CreateConnection ()    
    }

    async CreateConnection (){        
        //this.testConnection();
    }

    async GetConnection(){
        this.dbConnection = await mssql.connect(this.dbConfig);
        return this.dbConnection;
    }

    async testConnection() {
        try {
            const result = await this.dbConnection.request()
            .input("id", mssql.Int, 1)
            .query(`select * from sentences where id = @id`);            
            console.log(result.recordset[0])
            
            this.dbConnection.close()
        } catch (err) {
            console.log(err)
            this.dbConnection.close()
        }          
    }
}