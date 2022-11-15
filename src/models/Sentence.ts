import { AppModel } from "./AppModel";

export interface Sentence {
    id?: number;
    sentence: string;
}

export class SentenceModel extends AppModel implements Sentence {

    id?: number = 0;
    sentence: string = "";

    constructor(){
        super();        
    }    

    async GetSentences (): Promise<Sentence[]> {
        try {
            this.dbConnection = await this.GetDbConnection();
            const result = await this.dbConnection.request()
                .input("operation", "select")
                .execute("[dbo].[sp_manage_sentences]");

            this.dbConnection.close()
            return result.recordset as Sentence[];
        } catch (e) {
            console.error(e as Error);            
            this.dbConnection.close();
            throw new Error((e as Error).message);
        } 
    }

    async SaveSentence (): Promise<Sentence> {
        try {
            this.dbConnection = await this.GetDbConnection();
            const result = await this.dbConnection.request()
                .input("sentence", this.sentence)
                .input("operation", "insert")
                .execute("[dbo].[sp_manage_sentences]");

            this.dbConnection.close()
            return result.recordset[0];
        } catch (e) {
            console.error(e as Error);
            this.dbConnection.close()
            throw new Error((e as Error).message);
        }
    }

    DeleteSentence (sentence_id: number): boolean {
        console.log("Sentence model delted the sentence: " + this.sentence);
        return true;
    }
}