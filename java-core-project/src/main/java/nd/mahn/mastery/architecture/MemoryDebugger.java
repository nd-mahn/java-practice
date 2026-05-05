package nd.mahn.mastery.architecture;

public class MemoryDebugger {
    public static void main(String[] args) {
        recursiveCall();
    }
    public static void recursiveCall() {
        recursiveCall(); // Đệ quy vô hạn
    }
}
