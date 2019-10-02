public class RequestAnimals {
    
    public String name { get; set;}

    public static string parse(RequestAnimals json) {   
       return  System.JSON.serialize(json);
	}
}