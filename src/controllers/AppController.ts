import { NextFunction, Request, Response } from 'express';
import { environment } from '../environments/environment';

export class AppController {

    constructor() {              
    }

    checkAuthenctication = async (req: Request, res: Response, next: NextFunction) => {        
        if (req.headers.authorization?.split(" ")[1] !== environment.app_key) return res.status(401).send({
            ok: false,
            message: "Unauthorised"
        });        
        next();
    }

    hasRole = async (req: Request, res: Response, next: NextFunction) => {        
        if (req.headers.authorization?.split(" ")[1] !== environment.app_key) return res.status(401).send({
            ok: false,
            message: "Access denied"
        });        
        next();
    }    
} 