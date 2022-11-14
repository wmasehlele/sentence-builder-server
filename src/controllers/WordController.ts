import { Request, Response } from 'express';
import { Word, WordModel } from '../models/Word';

export class WordController {

  private _wordModel: WordModel;

  constructor(wordModel: WordModel) { 
    this._wordModel = wordModel;
  }

  getWordsByTypeId = async (req: Request, res: Response) => {
    let word_type_id: number = Number(req.params.word_type_id);
    const words: Word[] = this._wordModel.GetWordsByWordTypeId(word_type_id);
    res.send(words);
  } 

  

}