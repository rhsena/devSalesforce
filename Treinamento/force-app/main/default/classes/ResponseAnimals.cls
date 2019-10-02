public class ResponseAnimals {

	public List<String> animals;

	public static ResponseAnimals parse(String json) {
		return (ResponseAnimals) System.JSON.deserialize(json, ResponseAnimals.class);
	}

}