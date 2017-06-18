import com.kovka.web.util.encryption.EncryptException;
import com.kovka.web.util.encryption.SHAHashEnrypt;

/**
 * Created by User on 18.06.2017.
 */
public class PswG {
    public static void main(String[] args) throws EncryptException {
        System.out.println( SHAHashEnrypt.get_MD5_SecurePassword("arevik2014"));
    }
}
