import express, {Router} from 'express'
import { SentenceController } from '../controllers/SentenceController';
import { Sentence } from '../models/Sentence';

const sentenceController: SentenceController = new SentenceController();

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