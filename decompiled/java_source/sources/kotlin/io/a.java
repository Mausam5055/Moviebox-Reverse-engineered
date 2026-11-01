package kotlin.io;

import java.io.ByteArrayOutputStream;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
final class a extends ByteArrayOutputStream {
    public a(int i11) {
        super(i11);
    }

    public final byte[] d() {
        byte[] buf = ((ByteArrayOutputStream) this).buf;
        Intrinsics.g(buf, "buf");
        return buf;
    }
}
