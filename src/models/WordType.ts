import { Db } from '../database';
import { AppModel } from './AppModel';


export interface WordType {
    id?: number;
    word_type: string;
}

export class WordTypeModel extends AppModel implements WordType {

    id?: number = 0;
    word_type: string = "";

    constructor(){
        super();
    }

    async GetWordsTypes(): Promise<WordType[]> {
        try {
            this.dbConnection = await this.GetDbConnection();
            const result = await this.dbConnection.request()
                .input("operation", "select")
                .execute("[dbo].[sp_manage_word_types]");

            this.dbConnection.close();
            return result.recordset as WordType[];
        } catch (e) {
            console.error(e as Error);
            this.dbConnection.close()
            throw new Error((e as Error).message);
        }         
    }
}