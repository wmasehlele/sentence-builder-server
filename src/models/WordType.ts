export interface WordType {
    id?: number;
    word_type: string;
}

export class WordModel implements WordType {

    id?: number = 0;
    word_type: string = "";

    

}