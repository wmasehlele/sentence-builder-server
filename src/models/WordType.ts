export interface WordType {
    id?: number;
    word_type: string;
}

export class WordTypeModel implements WordType {

    id?: number = 0;
    word_type: string = "";

    

}