import { Helper } from '../helper';
import { Request, Response } from 'express';
import { Word, WordModel } from '../models/Word';

export class WordController {

  private _wordModel: WordModel;

  constructor(wordModel: WordModel) { 
    this._wordModel = wordModel;
  }

  getWordsByTypeId = async (req: Request, res: Response) => {        
    if (!Helper.isNumber(req.params.word_type_id)) { 
      res.status(400).send({ok: false, message: "Missing route parameter word_type_id."});
    }

    let word_type_id: number = Number(req.params.word_type_id);

    await this._wordModel.GetWordsByWordTypeId(word_type_id).then((results: Word[]) => {
        res.send(results);
    }).catch((error) => {
        res.status(500).send({ok: false, message: error.message});
    });
  } 
}