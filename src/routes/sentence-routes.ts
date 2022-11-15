import express, {Router} from 'express'
import { SentenceController } from '../controllers/SentenceController';
import { WordController } from '../controllers/WordController';
import { WordTypeController } from '../controllers/WordTypeController';
import { SentenceModel } from '../models/Sentence';
import { WordModel } from '../models/Word';
import { WordTypeModel } from '../models/WordType';

const sentenceController: SentenceController = new SentenceController(
    new SentenceModel()
);

const wordController: WordController = new WordController(
    new WordModel()
);

const wordTypeController: WordTypeController = new WordTypeController(
    new WordTypeModel()
);

// add relevant controllers here and inject their dependencies in the constructor;

export const SentenceRoutes = (() => {
    
    let router: Router = express.Router();

    router
        .route('/list')
        .get([sentenceController.checkAuthenctication],sentenceController.getSentences);        
    
    router
        .route('/word-types')
        .get(wordTypeController.getWordTypes);                

    router
        .route('/words-by-type/:word_type_id')
        .get(wordController.getWordsByTypeId);   
        
    router
        .route('/save-sentence')
        .post(sentenceController.saveSentence);         

    return router;
})();