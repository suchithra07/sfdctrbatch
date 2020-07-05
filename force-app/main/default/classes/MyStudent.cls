public class MyStudent {
    
    static integer rollnum; //variable declaration
    static string name;
    
    public static void getDetails(integer rollnum,string name){ //method name
        system.debug('my method starts');
        system.debug(rollnum);
        system.debug(name);
        system.debug('my method ends');
    }
    
    public static integer addNumber(integer a, integer b){
        return (a+b);
    }
}