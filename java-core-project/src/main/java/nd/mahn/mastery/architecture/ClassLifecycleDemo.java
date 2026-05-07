package nd.mahn.mastery.architecture;

public class ClassLifecycleDemo {
    static {
        System.out.println("Class đang được khởi tạo!");
    }

    public static void main(String[] args) {
        System.out.println("Phương thức main bắt đầu chạy");
        ClassLifecycleDemo classLifecycleDemo = new ClassLifecycleDemo();
    }
}
