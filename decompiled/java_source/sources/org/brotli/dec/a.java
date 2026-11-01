package org.brotli.dec;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes7.dex */
final class a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private InputStream f71615d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f71616e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    long f71617f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    int f71618g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f71619h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final byte[] f71612a = new byte[4160];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int[] f71613b = new int[1040];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final h f71614c = new h();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f71620i = 0;

    a() {
    }

    static void a(a aVar, boolean z10) {
        if (aVar.f71616e) {
            int i11 = ((aVar.f71619h << 2) + ((aVar.f71618g + 7) >> 3)) - 8;
            int i12 = aVar.f71620i;
            if (i11 > i12) {
                throw new BrotliRuntimeException("Read after end");
            }
            if (z10 && i11 != i12) {
                throw new BrotliRuntimeException("Unused bytes after end");
            }
        }
    }

    static void b(a aVar) throws IOException {
        InputStream inputStream = aVar.f71615d;
        aVar.f71615d = null;
        if (inputStream != null) {
            inputStream.close();
        }
    }

    static void c(a aVar, byte[] bArr, int i11, int i12) {
        if ((aVar.f71618g & 7) != 0) {
            throw new BrotliRuntimeException("Unaligned copyBytes");
        }
        while (true) {
            int i13 = aVar.f71618g;
            if (i13 == 64 || i12 == 0) {
                break;
            }
            bArr[i11] = (byte) (aVar.f71617f >>> i13);
            aVar.f71618g = i13 + 8;
            i12--;
            i11++;
        }
        if (i12 == 0) {
            return;
        }
        int iMin = Math.min(f(aVar), i12 >> 2);
        if (iMin > 0) {
            int i14 = iMin << 2;
            System.arraycopy(aVar.f71612a, aVar.f71619h << 2, bArr, i11, i14);
            i11 += i14;
            i12 -= i14;
            aVar.f71619h += iMin;
        }
        if (i12 == 0) {
            return;
        }
        if (f(aVar) <= 0) {
            while (i12 > 0) {
                try {
                    int i15 = aVar.f71615d.read(bArr, i11, i12);
                    if (i15 == -1) {
                        throw new BrotliRuntimeException("Unexpected end of input");
                    }
                    i11 += i15;
                    i12 -= i15;
                } catch (IOException e11) {
                    throw new BrotliRuntimeException("Failed to read input", e11);
                }
            }
            return;
        }
        d(aVar);
        while (i12 != 0) {
            long j11 = aVar.f71617f;
            int i16 = aVar.f71618g;
            bArr[i11] = (byte) (j11 >>> i16);
            aVar.f71618g = i16 + 8;
            i12--;
            i11++;
        }
        a(aVar, false);
    }

    static void d(a aVar) {
        int i11 = aVar.f71618g;
        if (i11 >= 32) {
            int[] iArr = aVar.f71613b;
            int i12 = aVar.f71619h;
            aVar.f71619h = i12 + 1;
            aVar.f71617f = (((long) iArr[i12]) << 32) | (aVar.f71617f >>> 32);
            aVar.f71618g = i11 - 32;
        }
    }

    static void e(a aVar, InputStream inputStream) {
        if (aVar.f71615d != null) {
            throw new IllegalStateException("Bit reader already has associated input stream");
        }
        h.b(aVar.f71614c, aVar.f71612a, aVar.f71613b);
        aVar.f71615d = inputStream;
        aVar.f71617f = 0L;
        aVar.f71618g = 64;
        aVar.f71619h = 1024;
        aVar.f71616e = false;
        h(aVar);
    }

    static int f(a aVar) {
        return (aVar.f71616e ? (aVar.f71620i + 3) >> 2 : 1024) - aVar.f71619h;
    }

    static void g(a aVar) {
        int i11 = (64 - aVar.f71618g) & 7;
        if (i11 != 0 && i(aVar, i11) != 0) {
            throw new BrotliRuntimeException("Corrupted padding bits");
        }
    }

    private static void h(a aVar) {
        j(aVar);
        a(aVar, false);
        d(aVar);
        d(aVar);
    }

    static int i(a aVar, int i11) {
        d(aVar);
        long j11 = aVar.f71617f;
        int i12 = aVar.f71618g;
        int i13 = ((int) (j11 >>> i12)) & ((1 << i11) - 1);
        aVar.f71618g = i12 + i11;
        return i13;
    }

    static void j(a aVar) {
        int i11 = aVar.f71619h;
        if (i11 <= 1015) {
            return;
        }
        if (aVar.f71616e) {
            if (f(aVar) < -2) {
                throw new BrotliRuntimeException("No more input");
            }
            return;
        }
        int i12 = i11 << 2;
        int i13 = 4096 - i12;
        byte[] bArr = aVar.f71612a;
        System.arraycopy(bArr, i12, bArr, 0, i13);
        aVar.f71619h = 0;
        while (i13 < 4096) {
            try {
                int i14 = aVar.f71615d.read(aVar.f71612a, i13, 4096 - i13);
                if (i14 <= 0) {
                    aVar.f71616e = true;
                    aVar.f71620i = i13;
                    i13 += 3;
                    break;
                }
                i13 += i14;
            } catch (IOException e11) {
                throw new BrotliRuntimeException("Failed to read input", e11);
            }
        }
        h.a(aVar.f71614c, i13 >> 2);
    }

    static void k(a aVar) {
        if (aVar.f71618g == 64) {
            h(aVar);
        }
    }
}
