import { Db } from '../database';


export interface WordType {
    id?: number;
    word_type: string;
}

export class WordTypeModel implements WordType {

    id?: number = 0;
    word_type: string = "";

    private database: any;
    private dbConnection: any;

    constructor(){
        this.database = new Db();
    }

    async GetWordsTypes(): Promise<WordType[]> {
        try {
            this.dbConnection = await this.database.GetConnection();
            const result = await this.dbConnection.request()
                .input("operation", "select")
                .execute("[dbo].[sp_manage_word_types]");

            this.dbConnection.close();
            return result.recordset as WordType[];
        } catch (e) {
            this.dbConnection.close()
            throw new Error((e as Error).message);
        }         
    }
}