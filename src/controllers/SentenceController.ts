import { Request, Response } from 'express';
import { Sentence, SentenceModel } from "../models/Sentence";

export class SentenceController {

  private _senetenceModel: SentenceModel;

  constructor(senetenceModel: SentenceModel) { 
    this._senetenceModel = senetenceModel;
  }

  getSentences = async (req: Request, res: Response) => {        
      await this._senetenceModel.GetSentences().then( (results: Sentence[]) => {
        res.send(results);
    }).catch((error: Error) => {
        res.status(500);
        res.send({"message": error.message});
    });
  }
  
  saveSentence = async (req: Request, res: Response) => {
    if (req.body.sentence == "") { 
      res.status(400);
      res.send({"message": "Failed to submit a blank sentence."});
    }
    this._senetenceModel.sentence = req.body.sentence;
    await this._senetenceModel.SaveSentence().then((results: Sentence) => {
      res.send(results);
    }).catch((error) => {
        res.status(500);
        res.send({"message": error.message});
    });
  }    
}