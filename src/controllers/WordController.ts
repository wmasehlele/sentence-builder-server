import { Request, Response } from 'express';
import { Word, WordModel } from '../models/Word';

export class WordController {

  private _wordModel: WordModel;

  constructor(wordModel: WordModel) { 
    this._wordModel = wordModel;
  }

  getWordsByTypeId = async (req: Request, res: Response) => {
    let word_type_id: number = Number(req.params.word_type_id);
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
    res.send(words.filter(word => word.word_type_id === word_type_id));
  } 

}