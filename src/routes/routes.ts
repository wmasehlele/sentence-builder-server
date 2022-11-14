import express, {Router} from 'express'
import { SentenceController } from '../controllers/SentenceController';
import { SentenceRoutes } from './sentence-routes';

const sentenceController: SentenceController = new SentenceController();

export const AppRouter = (() => {
    
    let router: Router = express.Router();
    router.use('/sentence', SentenceRoutes)        

    return router;
})();