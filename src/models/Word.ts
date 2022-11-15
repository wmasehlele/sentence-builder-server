import { Db } from "../database";
import { AppModel } from "./AppModel";

export interface Word {
    id?: number;
    word_type_id?: number;
    word: string;
}

export class WordModel extends AppModel implements Word {

    id?: number = 0;
    word_type_id?: number = 0;
    word: string = "";

    constructor(){
        super();
    }    

    async GetWords () {
        try {
            this.dbConnection = await this.GetDbConnection();
            const result = await this.dbConnection.request()
                .input("operation", "select")
                .execute("[dbo].[sp_manage_words]");

            this.dbConnection.close()
            return result.recordset as Word[];
        } catch (e) {
            console.error(e as Error);
            this.dbConnection.close()
            throw new Error((e as Error).message);
        } 
    }

    async GetWordsByWordTypeId (word_type_id: number): Promise<Word[]> {        
        try {
            this.dbConnection = await this.GetDbConnection();
            const result = await this.dbConnection.request()
                .input("word_type_id", word_type_id)
                .input("operation", "select")
                .execute("[dbo].[sp_manage_words]");

            this.dbConnection.close()
            return result.recordset as Word[]; 
        } catch (e) {
            console.error(e as Error);
            this.dbConnection.close()
            throw new Error((e as Error).message);
        } 
    }    
}