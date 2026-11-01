package xf;

import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes5.dex */
public final class d extends c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final byte[] f78259a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f78260b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f78261c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ByteOrder f78262d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f78263e;

    d(byte[] bArr, int i11, int i12, ByteOrder byteOrder) {
        this.f78259a = bArr;
        this.f78260b = i11;
        this.f78261c = i12;
        this.f78262d = byteOrder;
    }

    public static c e(byte[] bArr, int i11, int i12, ByteOrder byteOrder) {
        return new d(bArr, i11, i12, byteOrder);
    }

    @Override // xf.c
    public int a() {
        int iA = e.a(this.f78259a, this.f78260b + this.f78263e, this.f78262d);
        this.f78263e += 4;
        return iA;
    }

    @Override // xf.c
    public short b() {
        short sB = e.b(this.f78259a, this.f78260b + this.f78263e, this.f78262d);
        this.f78263e += 2;
        return sB;
    }

    @Override // xf.c
    public void c(int i11) {
        this.f78263e = i11;
    }

    @Override // xf.c
    public void d(int i11) {
        this.f78263e += i11;
    }
}
