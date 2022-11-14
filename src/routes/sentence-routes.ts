import express, {Router} from 'express'
import { SentenceController } from '../controllers/SentenceController';
import { SentenceModel } from '../models/Sentence';
import { WordModel } from '../models/Word';
import { WordTypeModel } from '../models/WordType';

const sentenceController: SentenceController = new SentenceController(
    new SentenceModel(),
    new WordModel(),
    new WordTypeModel()
);

// add relevant controllers here and inject their dependencies in the constructor;

export const SentenceRoutes = (() => {
    
    let router: Router = express.Router();

    router
        .route('/list')
        .get(sentenceController.getSentences);        
    
    router
        .route('/word-types')
        .get(sentenceController.getWordTypes);                

    router
        .route('/words-by-type/:word_type_id')
        .get(sentenceController.getWordsByTypeId);   
        
    router
        .route('/save-sentence')
        .post(sentenceController.saveSentence);         

    return router;
})();