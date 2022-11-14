export interface Word {
    id?: number;
    word_type_id?: number;
    word: string;
}

export class WordModel implements Word {

    id?: number = 0;
    word_type_id?: number = 0;
    word: string = "";

    

}