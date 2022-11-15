import { Db } from "../database";

export class AppModel {

    private database: any = new Db();
    protected dbConnection: any = null;

    constructor () {        
    }

    async GetDbConnection() {
        return await this.database.GetConnection();
    }

}