package com.mbridge.msdk.thrid.okhttp.internal.http2;

import java.util.Arrays;
import okhttp3.internal.http2.Settings;

/* JADX INFO: loaded from: classes5.dex */
public final class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f38217a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int[] f38218b = new int[10];

    int a(int i11) {
        return this.f38218b[i11];
    }

    m a(int i11, int i12) {
        if (i11 >= 0) {
            int[] iArr = this.f38218b;
            if (i11 < iArr.length) {
                this.f38217a = (1 << i11) | this.f38217a;
                iArr[i11] = i12;
            }
        }
        return this;
    }

    void a() {
        this.f38217a = 0;
        Arrays.fill(this.f38218b, 0);
    }

    void a(m mVar) {
        for (int i11 = 0; i11 < 10; i11++) {
            if (mVar.d(i11)) {
                a(i11, mVar.a(i11));
            }
        }
    }

    int b() {
        if ((this.f38217a & 2) != 0) {
            return this.f38218b[1];
        }
        return -1;
    }

    int b(int i11) {
        return (this.f38217a & 16) != 0 ? this.f38218b[4] : i11;
    }

    int c() {
        return (this.f38217a & 128) != 0 ? this.f38218b[7] : Settings.DEFAULT_INITIAL_WINDOW_SIZE;
    }

    int c(int i11) {
        return (this.f38217a & 32) != 0 ? this.f38218b[5] : i11;
    }

    int d() {
        return Integer.bitCount(this.f38217a);
    }

    boolean d(int i11) {
        return ((1 << i11) & this.f38217a) != 0;
    }
}
