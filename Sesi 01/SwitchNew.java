import java.util.Scanner;

class SwitchNew {
    public static void main(String args[]) {
        String day, result = "";
        Scanner input = new Scanner(System.in);
        System.out.print("Input Char: ");
        day = input.nextLine();
        switch (day) {
            case "M", "W", "F" -> result = "MWF";
            case "T", "TH", "S" -> result = "TTS";
            default -> {
                if (day.isEmpty())
                result = "Please insert a valid day.";
                else
                result = "Looks like a Sunday.";
            }
        };
        System.out.format("New switch results: %s", result);
    }
}
