package g10;

/* JADX INFO: loaded from: classes7.dex */
public abstract class y {
    y() {
    }

    public static byte c(y yVar, byte b11, byte b12) {
        int i11 = (b11 & 255) >> 3;
        int i12 = (b11 & 7) << 2;
        return (byte) ((yVar.f()[(((yVar.e() * b12) + ((yVar.a()[i11] >> i12) & 15)) & 255) >> 3] >> ((((b12 * yVar.e()) + ((yVar.a()[i11] >> i12) & 15)) & 7) << 2)) & 15);
    }

    public abstract int[] a();

    public abstract String b();

    public abstract boolean d();

    public abstract int e();

    public abstract int[] f();
}
