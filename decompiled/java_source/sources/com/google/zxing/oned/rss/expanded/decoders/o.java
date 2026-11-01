package com.google.zxing.oned.rss.expanded.decoders;

import com.google.zxing.FormatException;

/* JADX INFO: loaded from: classes4.dex */
final class o extends p {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f32936b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f32937c;

    o(int i11, int i12, int i13) throws FormatException {
        super(i11);
        if (i12 < 0 || i12 > 10 || i13 < 0 || i13 > 10) {
            throw FormatException.getFormatInstance();
        }
        this.f32936b = i12;
        this.f32937c = i13;
    }

    int b() {
        return this.f32936b;
    }

    int c() {
        return this.f32937c;
    }

    boolean d() {
        return this.f32936b == 10;
    }

    boolean e() {
        return this.f32937c == 10;
    }
}
