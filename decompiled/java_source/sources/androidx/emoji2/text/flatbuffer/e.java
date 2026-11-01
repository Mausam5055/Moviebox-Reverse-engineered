package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected int f9085a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected ByteBuffer f9086b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f9087c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f9088d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    f f9089e = f.a();

    protected int a(int i11) {
        return i11 + this.f9086b.getInt(i11);
    }

    protected int b(int i11) {
        if (i11 < this.f9088d) {
            return this.f9086b.getShort(this.f9087c + i11);
        }
        return 0;
    }

    protected void c(int i11, ByteBuffer byteBuffer) {
        this.f9086b = byteBuffer;
        if (byteBuffer == null) {
            this.f9085a = 0;
            this.f9087c = 0;
            this.f9088d = 0;
        } else {
            this.f9085a = i11;
            int i12 = i11 - byteBuffer.getInt(i11);
            this.f9087c = i12;
            this.f9088d = this.f9086b.getShort(i12);
        }
    }

    protected int d(int i11) {
        int i12 = i11 + this.f9085a;
        return i12 + this.f9086b.getInt(i12) + 4;
    }

    protected int e(int i11) {
        int i12 = i11 + this.f9085a;
        return this.f9086b.getInt(i12 + this.f9086b.getInt(i12));
    }

    protected int f(Integer num, Integer num2, ByteBuffer byteBuffer) {
        return 0;
    }
}
