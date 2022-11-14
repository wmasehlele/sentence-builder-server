export interface Word {
    id?: number;
    word_type_id?: number;
    word: string;
}

export class WordModel implements Word {

    id?: number = 0;
    word_type_id?: number = 0;
    word: string = "";

    GetWords () {
        const words: Word[] = [
            {
                "id": 1,
                "word_type_id": 1,
                "word": "The"
              },
              {
                "id": 2,
                "word_type_id": 2,
                "word": "Moment"
              },
              {
                "id": 3,
                "word_type_id": 3,
                "word": "Hello"
              }             
        ]
        return words;
    }

    GetWordsByWordTypeId (word_type_id: number): Word[] {
        const words: Word[] = [
            {
                "id": 1,
                "word_type_id": 1,
                "word": "The"
              },
              {
                "id": 2,
                "word_type_id": 2,
                "word": "Moment"
              },
              {
                "id": 3,
                "word_type_id": 3,
                "word": "Hello"
              }             
        ];
        return words.filter(word => word.word_type_id === word_type_id);
    }    

}