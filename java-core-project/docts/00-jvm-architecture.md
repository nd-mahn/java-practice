# ☕ JAVA CORE MASTER: JVM ARCHITECTURE & LIFECYCLE

## I. HỆ SINH THÁI JAVA (JDK - JRE - JVM)

| Thành phần | Viết tắt | Vai trò | Chứa gì? |
| :--- | :--- | :--- | :--- |
| **Java Virtual Machine** | **JVM** | Thực thi Bytecode, giúp Java độc lập nền tảng. | Trình thông dịch (Interpreter), JIT Compiler, Garbage Collector (GC). |
| **Java Runtime Environment** | **JRE** | Cung cấp môi trường để **chạy** ứng dụng Java. | JVM + Thư viện lớp chuẩn (Standard Libraries/RT.jar). |
| **Java Development Kit** | **JDK** | Bộ công cụ đầy đủ để **phát triển** ứng dụng. | JRE + Công cụ phát triển (Compiler `javac`, Debugger `jdb`). |

---

## II. KIẾN TRÚC BỘ NHỚ RUNTIME (JVM RUNTIME DATA AREAS)

JVM chia bộ nhớ thành các vùng chuyên biệt để quản lý dữ liệu hiệu quả:

### 1. Phân vùng dùng chung (Shared Areas)
* **Method Area:** Lưu trữ cấu trúc lớp (Metadata), hằng số (Constant Pool), và các biến `static`. Tồn tại suốt vòng đời ứng dụng.
* **Heap Area:** Nơi lưu trữ **tất cả các đối tượng (Objects)** và mảng. Đây là mục tiêu chính của Garbage Collector.

### 2. Phân vùng riêng biệt (Per-Thread Areas)
* **Stack Area:** Mỗi Thread có một Stack riêng. Lưu trữ các **biến cục bộ**, tham chiếu đối tượng (reference) và các Stack Frame (lời gọi hàm).
* **PC Register:** Lưu địa chỉ lệnh hiện tại đang được thực thi bởi luồng.
* **Native Method Stack:** Dành cho các phương thức viết bằng ngôn ngữ khác (C/C++).

### 3. So sánh Stack và Heap (Cực kỳ quan trọng)
| Đặc điểm | Stack Area | Heap Area |
| :--- | :--- | :--- |
| **Đối tượng lưu trữ** | Biến cục bộ, tham chiếu, lời gọi hàm. | Đối tượng thực tế (`new Object()`), mảng. |
| **Quản lý** | Tự động giải phóng theo cơ chế LIFO. | Quản lý bởi bộ dọn rác (GC). |
| **Phạm vi** | Riêng tư cho từng Thread. | Dùng chung toàn bộ ứng dụng. |
| **Lỗi thường gặp** | `StackOverflowError` (Đệ quy quá sâu). | `OutOfMemoryError` (Tràn bộ nhớ Heap). |

---

## III. VÒNG ĐỜI CỦA MỘT CLASS (CLASS LIFECYCLE)

Trước khi mã nguồn được thực thi, Class phải trải qua quy trình 5 giai đoạn:

1.  **Loading:** ClassLoader nạp file `.class` vào Method Area.
2.  **Linking:**
    * *Verification:* Kiểm tra mã có hợp lệ và an toàn không.
    * *Preparation:* Cấp bộ nhớ cho biến `static` và gán giá trị mặc định (vd: 0, null).
    * *Resolution:* Chuyển tham chiếu ký hiệu sang địa chỉ vật lý.
3.  **Initialization:** Thực thi khối `static { ... }` và gán giá trị thực tế cho các biến `static`.
4.  **Usage:** Class sẵn sàng để tạo đối tượng (`new`) hoặc gọi phương thức.
5.  **Unloading:** Xóa class khỏi bộ nhớ (khi ClassLoader không còn tồn tại).

---

## IV. BỘ DỌN RÁC - GARBAGE COLLECTION (GC)

### 1. Cơ chế Mark and Sweep
* **Mark (Đánh dấu):** Duyệt từ **GC Roots** (biến static, biến local) để tìm các đối tượng còn đang được sử dụng.
* **Sweep (Quét):** Thu hồi bộ nhớ của các đối tượng không được đánh dấu (không có tham chiếu).

### 2. Phân vùng Heap (Generational Collection)
* **Young Generation (Eden, S0, S1):** Nơi chứa các đối tượng mới khởi tạo. Thường xuyên được dọn dẹp (Minor GC).
* **Old Generation (Tenured):** Chứa các đối tượng "sống sót" qua nhiều lần dọn rác ở vùng Young. Vùng này lớn hơn và ít bị quét hơn để tiết kiệm hiệu năng.

---

## V. QUY TẮC VÀNG CHO CHUYÊN GIA

> [!IMPORTANT]
> 1. **Cơ chế WORA:** Java chạy được mọi nơi nhờ Bytecode và các bản JVM riêng biệt cho từng OS.
> 2. **Tính chất Static:** Biến/Khối static khởi tạo **duy nhất một lần** trong giai đoạn *Initialization*.
> 3. **Cấm gọi `System.gc()`:** Không can thiệp thủ công vào việc dọn rác vì sẽ gây hiện tượng **Stop-the-World** (đóng băng ứng dụng), làm giảm hiệu năng hệ thống.

---
*Tài liệu được biên soạn cho lộ trình Java Mastery của ND MAHN.*
