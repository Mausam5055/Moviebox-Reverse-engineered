package xg;

import java.io.EOFException;
import kotlin.ranges.RangesKt;
import okio.Buffer;

/* JADX INFO: loaded from: classes3.dex */
public abstract class d {
    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean b(Buffer buffer) {
        try {
            Buffer buffer2 = new Buffer();
            buffer.copyTo(buffer2, 0L, RangesKt.j(buffer.size(), 64L));
            for (int i11 = 0; i11 < 16 && !buffer2.exhausted(); i11++) {
                int utf8CodePoint = buffer2.readUtf8CodePoint();
                if (Character.isISOControl(utf8CodePoint) && !Character.isWhitespace(utf8CodePoint)) {
                    return false;
                }
            }
            return true;
        } catch (EOFException unused) {
            return false;
        }
    }
}
