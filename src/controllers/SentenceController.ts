import { Request, Response } from 'express';
import { Sentence, SentenceModel } from "../models/Sentence";
import { WordType, WordTypeModel } from '../models/WordType';
import { Word, WordModel } from '../models/Word';

export class SentenceController {

  private _senetenceModel: SentenceModel;
  private _wordModel: WordModel;
  private _wordTypeModel: WordTypeModel;

  constructor(senetenceModel: SentenceModel, wordModel: WordModel, wordTypeModel: WordTypeModel) { 
    this._senetenceModel = senetenceModel;
    this._wordModel = wordModel;
    this._wordTypeModel = wordTypeModel;
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
  
  saveSentence = async (req: Request, res: Response) => {
    console.log(req.body.sentence);
    res.send({"message": "Saved successfully"});
  }    

}