import com.alibaba.fastjson.JSON;

public class confirm {
    public static void main(String[] args) {
        String a="['[0, 6]', '[0, 7]', '[0, 0]']";
        System.out.println(JSON.parseArray(a));
    }
}