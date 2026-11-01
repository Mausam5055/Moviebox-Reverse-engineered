package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public final class b extends e {
    public b g(int i11, ByteBuffer byteBuffer) {
        h(i11, byteBuffer);
        return this;
    }

    public void h(int i11, ByteBuffer byteBuffer) {
        c(i11, byteBuffer);
    }

    public int i(int i11) {
        int iB = b(16);
        if (iB != 0) {
            return this.f9086b.getInt(d(iB) + (i11 * 4));
        }
        return 0;
    }

    public int j() {
        int iB = b(16);
        if (iB != 0) {
            return e(iB);
        }
        return 0;
    }

    public boolean k() {
        int iB = b(6);
        return (iB == 0 || this.f9086b.get(iB + this.f9085a) == 0) ? false : true;
    }

    public short l() {
        int iB = b(14);
        if (iB != 0) {
            return this.f9086b.getShort(iB + this.f9085a);
        }
        return (short) 0;
    }

    public int m() {
        int iB = b(4);
        if (iB != 0) {
            return this.f9086b.getInt(iB + this.f9085a);
        }
        return 0;
    }

    public short n() {
        int iB = b(8);
        if (iB != 0) {
            return this.f9086b.getShort(iB + this.f9085a);
        }
        return (short) 0;
    }

    public short o() {
        int iB = b(12);
        if (iB != 0) {
            return this.f9086b.getShort(iB + this.f9085a);
        }
        return (short) 0;
    }
}
