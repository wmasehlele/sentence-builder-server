export interface Sentence {
    id?: number;
    sentence: string;
}

export class SentenceModel implements Sentence {

    id?: number = 0;
    sentence: string = "";



}