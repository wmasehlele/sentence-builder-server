import { Db } from "../database";

export interface Word {
    id?: number;
    word_type_id?: number;
    word: string;
}

export class WordModel implements Word {

    id?: number = 0;
    word_type_id?: number = 0;
    word: string = "";

    private database: any;
    private dbConnection: any;

    constructor(){
        this.database = new Db();
    }    

    async GetWords () {
        try {
            this.dbConnection = await this.database.GetConnection();
            const result = await this.dbConnection.request()
                .input("operation", "select")
                .execute("[dbo].[sp_manage_words]");

            this.dbConnection.close()
            return result.recordset as Word[];
        } catch (e) {
            this.dbConnection.close()
            throw new Error((e as Error).message);
        } 
    }

    async GetWordsByWordTypeId (word_type_id: number): Promise<Word[]> {        
        try {
            this.dbConnection = await this.database.GetConnection();
            const result = await this.dbConnection.request()
                .input("word_type_id", word_type_id)
                .input("operation", "select")
                .execute("[dbo].[sp_manage_words]");

            this.dbConnection.close()
            return result.recordset as Word[]; 
        } catch (e) {
            this.dbConnection.close()
            throw new Error((e as Error).message);
        } 
    }    
}