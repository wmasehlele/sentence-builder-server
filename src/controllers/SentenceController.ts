import { NextFunction, Request, Response } from 'express';
import { Sentence, SentenceModel } from "../models/Sentence";
import { AppController } from './AppController';

export class SentenceController extends AppController{

  private _senetenceModel: SentenceModel;

  constructor(senetenceModel: SentenceModel) { 
    super();
    this._senetenceModel = senetenceModel;
  }

  getSentences = async (req: Request, res: Response) => {    
    await this._senetenceModel.GetSentences().then( (results: Sentence[]) => {
      res.send(results);
    }).catch((error: Error) => {
      res.status(500).send({ok: false, message: error.message});
    });
  }
  
  saveSentence = async (req: Request, res: Response) => {
    if (req.body.sentence == "") { 
      res.status(400).send({ok: false, message: "Failed to submit a blank sentence."});
    }
    this._senetenceModel.sentence = req.body.sentence;
    await this._senetenceModel.SaveSentence().then((results: Sentence) => {
      res.send(results);
    }).catch((error) => {
        res.status(500).send({ok: false, message: error.message});
    });
  }    
}