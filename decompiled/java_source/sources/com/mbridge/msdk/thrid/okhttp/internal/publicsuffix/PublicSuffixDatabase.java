package com.mbridge.msdk.thrid.okhttp.internal.publicsuffix;

import com.mbridge.msdk.thrid.okhttp.internal.c;
import com.mbridge.msdk.thrid.okhttp.internal.platform.g;
import com.mbridge.msdk.thrid.okio.e;
import com.mbridge.msdk.thrid.okio.j;
import com.mbridge.msdk.thrid.okio.l;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.IDN;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes5.dex */
public final class PublicSuffixDatabase {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final byte[] f38248e = {42};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String[] f38249f = new String[0];

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final String[] f38250g = {"*"};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final PublicSuffixDatabase f38251h = new PublicSuffixDatabase();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AtomicBoolean f38252a = new AtomicBoolean(false);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final CountDownLatch f38253b = new CountDownLatch(1);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private byte[] f38254c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private byte[] f38255d;

    public static PublicSuffixDatabase a() {
        return f38251h;
    }

    private static String a(byte[] bArr, byte[][] bArr2, int i11) {
        int i12;
        boolean z10;
        int i13;
        int i14;
        int length = bArr.length;
        int i15 = 0;
        while (i15 < length) {
            int i16 = (i15 + length) / 2;
            while (i16 > -1 && bArr[i16] != 10) {
                i16--;
            }
            int i17 = i16 + 1;
            int i18 = 1;
            while (true) {
                i12 = i17 + i18;
                if (bArr[i12] == 10) {
                    break;
                }
                i18++;
            }
            int i19 = i12 - i17;
            int i20 = i11;
            boolean z11 = false;
            int i21 = 0;
            int i22 = 0;
            while (true) {
                if (z11) {
                    i13 = 46;
                    z10 = false;
                } else {
                    z10 = z11;
                    i13 = bArr2[i20][i21] & 255;
                }
                i14 = i13 - (bArr[i17 + i22] & 255);
                if (i14 == 0) {
                    i22++;
                    i21++;
                    if (i22 == i19) {
                        break;
                    }
                    if (bArr2[i20].length != i21) {
                        z11 = z10;
                    } else {
                        if (i20 == bArr2.length - 1) {
                            break;
                        }
                        i20++;
                        i21 = -1;
                        z11 = true;
                    }
                } else {
                    break;
                }
            }
            if (i14 >= 0) {
                if (i14 <= 0) {
                    int i23 = i19 - i22;
                    int length2 = bArr2[i20].length - i21;
                    while (true) {
                        i20++;
                        if (i20 >= bArr2.length) {
                            break;
                        }
                        length2 += bArr2[i20].length;
                    }
                    if (length2 >= i23) {
                        if (length2 <= i23) {
                            return new String(bArr, i17, i19, c.f37910j);
                        }
                    }
                }
                i15 = i12 + 1;
            }
            length = i16;
        }
        return null;
    }

    private String[] a(String[] strArr) {
        String str;
        String strA;
        String strA2;
        if (this.f38252a.get() || !this.f38252a.compareAndSet(false, true)) {
            try {
                this.f38253b.await();
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
        } else {
            c();
        }
        synchronized (this) {
            if (this.f38254c == null) {
                throw new IllegalStateException("Unable to load publicsuffixes.gz resource from the classpath.");
            }
        }
        int length = strArr.length;
        byte[][] bArr = new byte[length][];
        for (int i11 = 0; i11 < strArr.length; i11++) {
            bArr[i11] = strArr[i11].getBytes(c.f37910j);
        }
        int i12 = 0;
        while (true) {
            str = null;
            if (i12 >= length) {
                strA = null;
                break;
            }
            strA = a(this.f38254c, bArr, i12);
            if (strA != null) {
                break;
            }
            i12++;
        }
        if (length <= 1) {
            strA2 = null;
            break;
        }
        byte[][] bArr2 = (byte[][]) bArr.clone();
        int i13 = 0;
        while (true) {
            if (i13 >= bArr2.length - 1) {
                strA2 = null;
                break;
            }
            bArr2[i13] = f38248e;
            strA2 = a(this.f38254c, bArr2, i13);
            if (strA2 != null) {
                break;
            }
            i13++;
        }
        if (strA2 != null) {
            for (int i14 = 0; i14 < length - 1; i14++) {
                String strA3 = a(this.f38255d, bArr, i14);
                if (strA3 != null) {
                    str = strA3;
                    break;
                }
            }
        }
        if (str != null) {
            return ("!" + str).split("\\.");
        }
        if (strA == null && strA2 == null) {
            return f38250g;
        }
        String[] strArrSplit = strA != null ? strA.split("\\.") : f38249f;
        String[] strArrSplit2 = strA2 != null ? strA2.split("\\.") : f38249f;
        return strArrSplit.length > strArrSplit2.length ? strArrSplit : strArrSplit2;
    }

    private void b() throws IOException {
        InputStream resourceAsStream = PublicSuffixDatabase.class.getResourceAsStream(okhttp3.internal.publicsuffix.PublicSuffixDatabase.PUBLIC_SUFFIX_RESOURCE);
        if (resourceAsStream == null) {
            return;
        }
        e eVarA = l.a(new j(l.a(resourceAsStream)));
        try {
            byte[] bArr = new byte[eVarA.readInt()];
            eVarA.readFully(bArr);
            byte[] bArr2 = new byte[eVarA.readInt()];
            eVarA.readFully(bArr2);
            c.a(eVarA);
            synchronized (this) {
                this.f38254c = bArr;
                this.f38255d = bArr2;
            }
            this.f38253b.countDown();
        } catch (Throwable th2) {
            c.a(eVarA);
            throw th2;
        }
    }

    private void c() {
        boolean z10 = false;
        while (true) {
            try {
                try {
                    b();
                    break;
                } catch (InterruptedIOException unused) {
                    Thread.interrupted();
                    z10 = true;
                } catch (IOException e11) {
                    g.d().a(5, "Failed to read public suffix list", e11);
                    if (z10) {
                        Thread.currentThread().interrupt();
                        return;
                    }
                    return;
                }
            } catch (Throwable th2) {
                if (z10) {
                    Thread.currentThread().interrupt();
                }
                throw th2;
            }
        }
        if (z10) {
            Thread.currentThread().interrupt();
        }
    }

    public String a(String str) {
        int length;
        int length2;
        if (str == null) {
            throw new NullPointerException("domain == null");
        }
        String[] strArrSplit = IDN.toUnicode(str).split("\\.");
        String[] strArrA = a(strArrSplit);
        if (strArrSplit.length == strArrA.length && strArrA[0].charAt(0) != '!') {
            return null;
        }
        if (strArrA[0].charAt(0) == '!') {
            length = strArrSplit.length;
            length2 = strArrA.length;
        } else {
            length = strArrSplit.length;
            length2 = strArrA.length + 1;
        }
        StringBuilder sb2 = new StringBuilder();
        String[] strArrSplit2 = str.split("\\.");
        for (int i11 = length - length2; i11 < strArrSplit2.length; i11++) {
            sb2.append(strArrSplit2[i11]);
            sb2.append('.');
        }
        sb2.deleteCharAt(sb2.length() - 1);
        return sb2.toString();
    }
}
