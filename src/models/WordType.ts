export interface WordType {
    id?: number;
    word_type: string;
}

export class WordTypeModel implements WordType {

    id?: number = 0;
    word_type: string = "";

    GetWordsTypes(): WordType[] {
        const wordsTypes: WordType[] = [
            {
                "id": 1,
                "word_type": "Noun"
            },
            {
                "id": 2,
                "word_type": "Preposition"
            },
            {
                "id": 3,
                "word_type": "Verb"
            }             
        ];
        return wordsTypes;    
    }

}