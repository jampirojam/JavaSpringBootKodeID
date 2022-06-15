import java.io.*;
import java.util.*;

public class Reward {
    public static void main(String[] args) {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        try {
            System.out.println("BARANG:");
            System.out.println("1. Penggaris");
            System.out.println("2. Penghapus");
            System.out.println("3. Pensil");
            System.out.println("4. Pena");
            System.out.println("Masukan kode barang");
            int kobar = Integer.parseInt(br.readLine());
            System.out.println("Masukan jumlah barang");
            int jumbar = Integer.parseInt(br.readLine());
            double disk = 2.5;
            if (jumbar > 10) {

            }
        } catch (Exception e) {
            System.out.println(e);
        }
    }
}
