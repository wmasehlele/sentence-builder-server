import express, {NextFunction, Router} from 'express'
import { SentenceRoutes } from './sentence-routes';

export const AppRouter = (() => {

    let router: Router = express.Router();
    router.use('/sentence', SentenceRoutes)        

    return router;

})();