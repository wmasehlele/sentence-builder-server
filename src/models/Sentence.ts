export interface Sentence {
    id?: number;
    sentence: string;
}

export class SentenceModel implements Sentence {

    id?: number = 0;
    sentence: string = "";

    GetSentences (): Sentence[] {
        const sentences: Sentence[] = [
            {
                "id": 1,
                "sentence": "This is serber most basic list group is an unordered list with list items and the proper classes. Build upon it with the options that follow, or with your own CSS as needed."
            },
            {
                "id": 2,
                "sentence": "From server side most basic list group is an unordered list with list items and the proper classes. Build upon it with the options that follow, or with your own CSS as needed."
            }  
        ];
        return sentences;
    }

    SaveSentence (): boolean {
        console.log("Sentence model save the sentence: " + this.sentence);
        return true;
    }

    DeleteSentence (sentence_id: number): boolean {
        console.log("Sentence model delted the sentence: " + this.sentence);
        return true;
    }
}