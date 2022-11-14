import { Request, Response } from 'express';
import { Sentence, SentenceModel } from "../models/Sentence";

export class SentenceController {

  private _senetenceModel: SentenceModel;

  constructor(senetenceModel: SentenceModel) { 
    this._senetenceModel = senetenceModel;
  }

  getSentences = async (req: Request, res: Response) => {        
      const sentences: Sentence[] = this._senetenceModel.GetSentences();
      res.send(sentences);
  }
  
  saveSentence = async (req: Request, res: Response) => {
    if (req.body.sentence == "") { 
      throw new Error("Cannot submit blank sentence");
    }
    this._senetenceModel.sentence = req.body.sentence;
    this._senetenceModel.SaveSentence();
    res.send({"message": "Saved successfully"});
  }    
}