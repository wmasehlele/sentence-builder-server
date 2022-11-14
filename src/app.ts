import express, { Application, Request, Response } from 'express';
import { environment } from './environments/environment';
import cors from "cors";
import { AppRouter } from './routes/routes';

import { Db } from './database';

const app: Application = express();
const corsOptions = {
    origin: "*"
}

app.use(express.json());
app.use(cors(corsOptions));

app.use('/api', AppRouter);

app.use( (err: Error, req: Request, res: Response) => {    
    res.status(500);
    res.send( err.message );
    console.log(err.message);
});

const port: number = environment.port;
app.listen(port, () => {
    console.log(`connected on port ${port}`);
});

//new Db().GetConnection();