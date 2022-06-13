import java.util.Scanner;

class SwitchNew {
    public static void main(String args[]) {
        String day, result = "";
        Scanner input = new Scanner(System.in);
        System.out.print("Input Char: ")
        day = input.nextLine();
        switch (day){
            case "M", "W", "F" -> "MWF";
            case "T", "TH", "S" -> "TTS";
            default -> {
                if(day.isEmpty())
                break "Please insert a valid day.";
                else
                break "Looks like a Sunday.";
            }
        };
        System.out.format("New switch results: %s", result);
    }
}
