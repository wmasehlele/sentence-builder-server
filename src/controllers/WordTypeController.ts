import { Request, Response } from 'express';
import { WordType, WordTypeModel } from '../models/WordType';

export class WordTypeController {

  private _wordTypeModel: WordTypeModel;

  constructor(wordTypeModel: WordTypeModel) { 
    this._wordTypeModel = wordTypeModel;
  }

  getWordTypes = async (req: Request, res: Response) => {
    const word_types: WordType[] = [
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
    res.send(word_types);
  }


}