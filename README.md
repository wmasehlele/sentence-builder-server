# sentence-builder-server

Node and express rest api written in typescript

## Database

MSSQL Server databse script for schema and sample data is included in the project root directory.

You need at least `Microsoft SQL Server 2017` Developer Edition (64-bit) to execute the databse script.

Update the environment file with the correct `db_server`, `db_name`, `db_username` and `db_password` values.

## Development server

Run `npm install`

Run `npm run dev` for a dev server. Navigate to `http://localhost:3000/`. The application will automatically reload if you change any of the source files.

## Build

Run `npm run build` to build the project. The build artifacts will be stored in the `dist/` directory.