package a5;

import com.alibaba.fastjson.JSONException;
import java.io.IOException;
import java.io.Reader;
import java.lang.reflect.Type;
import java.sql.Clob;
import java.sql.SQLException;

/* JADX INFO: loaded from: classes2.dex */
public class y implements z0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final y f360a = new y();

    @Override // a5.z0
    public void d(o0 o0Var, Object obj, Object obj2, Type type, int i11) throws IOException {
        try {
            if (obj == null) {
                o0Var.C();
                return;
            }
            Reader characterStream = ((Clob) obj).getCharacterStream();
            StringBuilder sb2 = new StringBuilder();
            try {
                char[] cArr = new char[2048];
                while (true) {
                    int i12 = characterStream.read(cArr, 0, 2048);
                    if (i12 < 0) {
                        String string = sb2.toString();
                        characterStream.close();
                        o0Var.B(string);
                        return;
                    }
                    sb2.append(cArr, 0, i12);
                }
            } catch (Exception e11) {
                throw new JSONException("read string from reader error", e11);
            }
        } catch (SQLException e12) {
            throw new IOException("write clob error", e12);
        }
    }
}
