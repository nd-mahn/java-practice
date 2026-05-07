package nd.mahn.mastery.architecture;

public class StorageTest {
    static int globalCount = 100; // (1) Method Area

    public void process() {
        double price = 50.5;      // (2) Stack Area
        Object obj = new Object(); // (3) Heap Area=(new Object()) | Stack Area (obj)
        /*
        (1) static int globalCount: Method Area. Chính xác! Vì nó là biến static, nó thuộc về lớp (Class level) chứ không thuộc về đối tượng.

        (2) double price: Stack Area. Đây là biến cục bộ (local variable) kiểu primitive. Mọi biến khai báo bên trong phương thức đều được đẩy vào Stack Frame khi phương thức đó chạy.

        (3) Object obj = new Object():

        Cái tên obj (biến tham chiếu): Nằm ở Stack Area.

        Cái "thân xác" thực sự new Object(): Nằm ở Heap Area.
         */
    }
}