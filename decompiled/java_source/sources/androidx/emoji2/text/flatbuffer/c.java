package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes.dex */
public final class c extends e {
    public static c i(ByteBuffer byteBuffer) {
        return j(byteBuffer, new c());
    }

    public static c j(ByteBuffer byteBuffer, c cVar) {
        byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
        return cVar.g(byteBuffer.getInt(byteBuffer.position()) + byteBuffer.position(), byteBuffer);
    }

    public c g(int i11, ByteBuffer byteBuffer) {
        h(i11, byteBuffer);
        return this;
    }

    public void h(int i11, ByteBuffer byteBuffer) {
        c(i11, byteBuffer);
    }

    public b k(b bVar, int i11) {
        int iB = b(6);
        if (iB != 0) {
            return bVar.g(a(d(iB) + (i11 * 4)), this.f9086b);
        }
        return null;
    }

    public int l() {
        int iB = b(6);
        if (iB != 0) {
            return e(iB);
        }
        return 0;
    }

    public int m() {
        int iB = b(4);
        if (iB != 0) {
            return this.f9086b.getInt(iB + this.f9085a);
        }
        return 0;
    }
}
