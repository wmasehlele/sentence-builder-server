import { Request, Response } from 'express';
import { Sentence, SentenceModel } from "../models/Sentence";
import { WordType, WordTypeModel } from '../models/WordType';
import { Word, WordModel } from '../models/Word';

export class SentenceController {

  private _senetenceModel: SentenceModel;

  constructor(senetenceModel: SentenceModel) { 
    this._senetenceModel = senetenceModel;
  }

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
  
  saveSentence = async (req: Request, res: Response) => {
    console.log(req.body.sentence);
    res.send({"message": "Saved successfully"});
  }    

}