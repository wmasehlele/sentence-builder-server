import { Request, Response } from 'express';
import { Sentence } from "../models/Sentence";

export class SentenceController {

    constructor() { }

    getSentences = async (req: Request, res: Response) => {
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
        res.send(sentences);
    }

}