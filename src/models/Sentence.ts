import { Db } from "../database";

export interface Sentence {
    id?: number;
    sentence: string;
}

export class SentenceModel implements Sentence {

    id?: number = 0;
    sentence: string = "";

    private database: any;
    private dbConnection: any;

    constructor(){
        this.database = new Db();
    }    

    async GetSentences (): Promise<Sentence[]> {
        try {
            this.dbConnection = await this.database.GetConnection();
            const result = await this.dbConnection.request()
                .input("operation", "select")
                .execute("[dbo].[sp_manage_sentences]");

            this.dbConnection.close()
            return result.recordset as Sentence[];
        } catch (e) {
            this.dbConnection.close()
            throw new Error((e as Error).message);
        } 
    }

    async SaveSentence (): Promise<Sentence> {
        try {
            this.dbConnection = await this.database.GetConnection();
            const result = await this.dbConnection.request()
                .input("sentence", this.sentence)
                .input("operation", "insert")
                .execute("[dbo].[sp_manage_sentences]");

            this.dbConnection.close()
            return result.recordset[0];
        } catch (e) {
            this.dbConnection.close()
            throw new Error((e as Error).message);
        }
    }

    DeleteSentence (sentence_id: number): boolean {
        console.log("Sentence model delted the sentence: " + this.sentence);
        return true;
    }
}