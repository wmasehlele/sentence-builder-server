import { Request, Response } from 'express';
import { WordType, WordTypeModel } from '../models/WordType';

export class WordTypeController {

  private _wordTypeModel: WordTypeModel;

  constructor(wordTypeModel: WordTypeModel) { 
    this._wordTypeModel = wordTypeModel;
  }

  getWordTypes = async (req: Request, res: Response) => {
    const word_types: WordType[] = this._wordTypeModel.GetWordsTypes();
    res.send(word_types);
  }


}