package xl;

import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes6.dex */
public class a {
    public boolean a(Object obj, File file, long j11) throws Throwable {
        try {
            cm.a.e((ByteBuffer) obj, file);
            return true;
        } catch (IOException unused) {
            return false;
        }
    }
}
