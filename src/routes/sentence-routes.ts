import express, {Router} from 'express'
import { SentenceController } from '../controllers/SentenceController';
import { Sentence } from '../models/Sentence';

const sentenceController: SentenceController = new SentenceController();

export const SentenceRoutes = (() => {
    
    let router: Router = express.Router();

    router
        .route('/')
        .get(sentenceController.getSentences);

    router
        .route('/sentences')
        .get(sentenceController.getSentences);        
    
    router
        .route('/word-types')
        .get(sentenceController.getSentences);                

    router
        .route('/words-by-type')
        .get(sentenceController.getSentences);   
        
    router
        .route('/save-sentence')
        .post(sentenceController.getSentences);         

    return router;
})();