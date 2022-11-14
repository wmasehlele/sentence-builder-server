export class Helper {

    static isNumber(number: any): boolean{
        return !isNaN(Number(number)) ? true : false;
    }
}