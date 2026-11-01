package yd;

import java.lang.reflect.Array;
import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final byte[][] f78983a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f78984b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f78985c;

    public a(int i11, int i12) {
        this.f78983a = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, i12, i11);
        this.f78984b = i11;
        this.f78985c = i12;
    }

    public void a(byte b11) {
        for (byte[] bArr : this.f78983a) {
            Arrays.fill(bArr, b11);
        }
    }

    public byte b(int i11, int i12) {
        return this.f78983a[i12][i11];
    }

    public byte[][] c() {
        return this.f78983a;
    }

    public int d() {
        return this.f78985c;
    }

    public int e() {
        return this.f78984b;
    }

    public void f(int i11, int i12, int i13) {
        this.f78983a[i12][i11] = (byte) i13;
    }

    public void g(int i11, int i12, boolean z10) {
        this.f78983a[i12][i11] = z10 ? (byte) 1 : (byte) 0;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder((this.f78984b * 2 * this.f78985c) + 2);
        for (int i11 = 0; i11 < this.f78985c; i11++) {
            byte[] bArr = this.f78983a[i11];
            for (int i12 = 0; i12 < this.f78984b; i12++) {
                byte b11 = bArr[i12];
                if (b11 == 0) {
                    sb2.append(" 0");
                } else if (b11 != 1) {
                    sb2.append("  ");
                } else {
                    sb2.append(" 1");
                }
            }
            sb2.append('\n');
        }
        return sb2.toString();
    }
}
