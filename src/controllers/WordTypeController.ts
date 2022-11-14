import { Request, Response } from 'express';
import { WordType, WordTypeModel } from '../models/WordType';

export class WordTypeController {

  private _wordTypeModel: WordTypeModel;

  constructor(wordTypeModel: WordTypeModel) { 
    this._wordTypeModel = wordTypeModel;
  }

  getWordTypes = async (req: Request, res: Response) => {
    await this._wordTypeModel.GetWordsTypes().then( (results: WordType[]) => {
        res.send(results);
    }).catch((error) => {
        res.status(500);
        res.send({"message": error.message});
    });
  }
}
